PROCEDURE sts_transfer_files_to_folder_pro(

    p_target_folder_id IN NUMBER,      -- 目标文件夹ID（必须存在）

    p_old_file_ids IN VARCHAR2,        -- 要转移的旧文件ID列表，逗号分隔

    p_mpf_user_id IN NUMBER,           -- 更新人信息

    p_user_tenant IN NUMBER,           -- 租户ID

    p_success OUT VARCHAR2,            -- 成功状态：Y/N

    p_message OUT VARCHAR2,            -- 返回消息

    p_processed_count OUT NUMBER       -- 成功处理的文件数量

) AS

    v_target_folder_name VARCHAR2(100);

    v_target_folder_level NUMBER;

    v_target_root_id NUMBER;

    v_target_scope_type VARCHAR2(50);

    v_target_file_path VARCHAR2(4000);

    v_target_plans_file_type VARCHAR2(50);



    v_count NUMBER;

    v_total_count NUMBER := 0;

    v_max_iterations NUMBER := 15;  --防止迭代死循环，最多15层

    v_iteration NUMBER := 0;



    -- 用于存储旧文件ID的集合

    v_old_files number_table_type := number_table_type();



    -- 用于存储文件信息的记录类型

    TYPE file_info_rec IS RECORD (

        file_id NUMBER,

        file_name VARCHAR2(255),

        file_level NUMBER,

        root_folder_id NUMBER,

        parent_folder_id NUMBER,

        file_path VARCHAR2(4000),

        scope_type VARCHAR2(50),

        plans_file_type VARCHAR2(50)

    );



    -- 用于存储文件信息的表类型

    TYPE file_info_table IS TABLE OF file_info_rec;

    v_file_infos file_info_table;



    -- 异常变量

    v_target_not_found EXCEPTION;

    PRAGMA EXCEPTION_INIT(v_target_not_found, -20001);



    -- 记录日志的辅助函数

    PROCEDURE write_log(p_message IN VARCHAR2) IS

    BEGIN

        JA_WRITE_LOG(JA_UTILS_PKG.GET_FN_NAME(), 'info', p_message, -1, 3, '销售工具', 308, 'STS');

        DBMS_OUTPUT.PUT_LINE(p_message);

    END write_log;



BEGIN

    -- 初始化输出参数

    p_success := 'N';

    p_message := '';

    p_processed_count := 0;



    write_log('开始文件转移操作...');

    write_log('目标文件夹ID: ' || p_target_folder_id || ', 要转移的文件ID: ' || p_old_file_ids);



    -- 1. 验证目标文件夹是否存在并获取完整信息

    BEGIN

        SELECT FILE_NAME, FILE_LEVEL, ROOT_FOLDER_ID, SCOPE_TYPE,

               DECODE(FILE_PATH, NULL, FILE_NAME, FILE_PATH || '/' || FILE_NAME), PLANS_FILE_TYPE

        INTO v_target_folder_name, v_target_folder_level, v_target_root_id,

             v_target_scope_type, v_target_file_path, v_target_plans_file_type

        FROM STS_FILE

        WHERE FILE_ID = p_target_folder_id AND DEL_FLAG = 0 AND TENANT_ID = p_user_tenant;



        -- 如果目标文件夹是根目录，调整路径和root_id

        IF v_target_folder_level = 1 THEN

            v_target_root_id := p_target_folder_id;

            v_target_file_path := NULL; -- 根目录路径为空

        ELSIF v_target_root_id IS NULL THEN

            v_target_root_id := p_target_folder_id;

        END IF;



        write_log('目标文件夹: ' || v_target_folder_name || ' (ID: ' || p_target_folder_id ||

                  ', LEVEL: ' || v_target_folder_level || ', ROOT: ' || NVL(TO_CHAR(v_target_root_id), 'NULL') || ')');

    EXCEPTION

        WHEN NO_DATA_FOUND THEN

            p_message := '目标文件夹ID ' || p_target_folder_id || ' 不存在或已被删除';

            RAISE_APPLICATION_ERROR(-20001, p_message);

    END;



    -- 2. 解析旧文件ID列表并获取文件信息

    SELECT TO_NUMBER(TRIM(REGEXP_SUBSTR(p_old_file_ids, '[^,]+', 1, LEVEL)))

    BULK COLLECT INTO v_old_files

    FROM DUAL

    CONNECT BY REGEXP_SUBSTR(p_old_file_ids, '[^,]+', 1, LEVEL) IS NOT NULL;



    IF v_old_files.COUNT = 0 THEN

        p_message := '警告: 没有找到有效的文件ID';

        write_log(p_message);

        RETURN;

    END IF;



    write_log('要转移的文件数量: ' || v_old_files.COUNT);



    -- 3. 获取所有要转移文件的详细信息

    SELECT FILE_ID, FILE_NAME, FILE_LEVEL, ROOT_FOLDER_ID, PARENT_FOLDER_ID,

           FILE_PATH, SCOPE_TYPE, PLANS_FILE_TYPE

    BULK COLLECT INTO v_file_infos

    FROM STS_FILE

    WHERE FILE_ID IN (SELECT column_value FROM TABLE(v_old_files))

      AND DEL_FLAG = 0

      AND TENANT_ID = p_user_tenant;



    IF v_file_infos.COUNT = 0 THEN

        p_message := '警告: 没有找到需要转移的有效文件';

        write_log(p_message);

        RETURN;

    END IF;



    -- 4. 更新文件的直接父目录和基本信息

    write_log('开始更新文件的父目录和基本信息...');



    FOR i IN 1..v_file_infos.COUNT LOOP

        BEGIN

            UPDATE STS_FILE

            SET PARENT_FOLDER_ID = p_target_folder_id,

                ROOT_FOLDER_ID = DECODE(v_target_folder_level, 1, p_target_folder_id, v_target_root_id),

                FILE_LEVEL = v_target_folder_level + 1, -- 新层级为目标文件夹层级+1

                FILE_PATH = v_target_file_path, -- 使用目标文件夹的路径（不含自身）

                SCOPE_TYPE = v_target_scope_type,

                PLANS_FILE_TYPE = v_target_plans_file_type,

                UPDATED_BY = p_mpf_user_id,

                UPDATE_DATE = SYSDATE

            WHERE FILE_ID = v_file_infos(i).file_id

              AND DEL_FLAG = 0

              AND TENANT_ID = p_user_tenant;



            write_log('更新文件: ' || v_file_infos(i).file_name || ' (ID:' || v_file_infos(i).file_id ||

                      ') -> 父目录:' || p_target_folder_id || ', 新层级:' || (v_target_folder_level + 1));



        EXCEPTION

            WHEN OTHERS THEN

                write_log('更新文件失败: ' || v_file_infos(i).file_name || ' (ID:' || v_file_infos(i).file_id || ') - ' || SQLERRM);

                RAISE;

        END;

    END LOOP;



    -- 5. 递归更新所有子文件的ROOT_FOLDER_ID和层级信息

    write_log('开始递归更新子文件的ROOT_FOLDER_ID和层级信息...');



    v_iteration := 0;

    v_total_count := 0;



    LOOP

        v_iteration := v_iteration + 1;



        -- 更新子文件的ROOT_FOLDER_ID

        UPDATE STS_FILE A

        SET ROOT_FOLDER_ID = v_target_root_id,

            UPDATED_BY = p_mpf_user_id,

            UPDATE_DATE = SYSDATE

        WHERE EXISTS (

            SELECT 1 FROM STS_FILE B

            WHERE B.FILE_ID = A.PARENT_FOLDER_ID

              AND B.ROOT_FOLDER_ID = v_target_root_id

              AND B.DEL_FLAG = 0

              AND B.TENANT_ID = p_user_tenant

        )

        AND A.ROOT_FOLDER_ID != v_target_root_id

        AND A.DEL_FLAG = 0

        AND A.TENANT_ID = p_user_tenant;



        v_count := SQL%ROWCOUNT;

        v_total_count := v_total_count + v_count;



        IF v_count > 0 THEN

            write_log('第 ' || v_iteration || ' 轮更新: ' || v_count || ' 条记录的ROOT_FOLDER_ID');

        END IF;



        EXIT WHEN v_count = 0 OR v_iteration >= v_max_iterations;

    END LOOP;



    write_log('递归更新完成，总共更新 ' || v_total_count || ' 条记录的ROOT_FOLDER_ID');



    -- 6. 重新计算所有文件的层级FILE_LEVEL

    write_log('开始重新计算文件层级...');



    -- 首先重置层级

    UPDATE STS_FILE

    SET FILE_LEVEL = NULL,

        UPDATED_BY = p_mpf_user_id,

        UPDATE_DATE = SYSDATE

    WHERE ROOT_FOLDER_ID = v_target_root_id

      AND DEL_FLAG = 0

      AND TENANT_ID = p_user_tenant;



    -- 然后使用CONNECT BY重新计算层级

    MERGE INTO STS_FILE A

    USING (

        SELECT

            FILE_ID,

            LEVEL as NEW_LEVEL

        FROM STS_FILE

        START WITH FILE_ID = v_target_root_id

        CONNECT BY PRIOR FILE_ID = PARENT_FOLDER_ID

               AND DEL_FLAG = 0

               AND TENANT_ID = p_user_tenant

    ) B ON (A.FILE_ID = B.FILE_ID)

    WHEN MATCHED THEN UPDATE

        SET A.FILE_LEVEL = B.NEW_LEVEL,

            A.UPDATED_BY = p_mpf_user_id,

            A.UPDATE_DATE = SYSDATE;



    SELECT COUNT(*) INTO v_count

    FROM STS_FILE

    WHERE ROOT_FOLDER_ID = v_target_root_id

      AND DEL_FLAG = 0

      AND TENANT_ID = p_user_tenant;



    write_log('更新 ' || v_count || ' 个文件的FILE_LEVEL');



     -- 7. 更新文件路径（使用Oracle语法的递归CTE）

    write_log('开始更新文件路径...');



    MERGE INTO STS_FILE A

    USING (

        WITH file_paths (file_id, file_level, file_name, full_path) AS (

            -- 锚点：根目录

            SELECT

                file_id,

                file_level,

                file_name,

                CAST(NULL AS VARCHAR2(4000)) as full_path

            FROM STS_FILE

            WHERE file_id = v_target_root_id

              AND del_flag = 0

              AND tenant_id = p_user_tenant



            UNION ALL



            -- 递归成员：子目录

            SELECT

                child.file_id,

                child.file_level,

                child.file_name,

                CASE

                    WHEN parent.file_level = 1 THEN

                        parent.file_name  -- 根目录的子目录：路径为根目录名

                    ELSE

                        -- 其他情况：父路径 + 父文件名

                        CASE

                            WHEN parent.full_path IS NOT NULL THEN

                                parent.full_path || '/' || parent.file_name

                            ELSE

                                parent.file_name

                        END

                END as full_path

            FROM STS_FILE child

            INNER JOIN file_paths parent ON child.parent_folder_id = parent.file_id

            WHERE child.del_flag = 0

              AND child.tenant_id = p_user_tenant

        )

        SELECT

            file_id,

            CASE

                WHEN file_level = 1 THEN NULL  -- 根目录路径为空

                ELSE full_path                 -- 其他级别使用计算出的路径

            END as new_file_path

        FROM file_paths

    ) B ON (A.FILE_ID = B.FILE_ID)

    WHEN MATCHED THEN UPDATE

        SET A.FILE_PATH = B.NEW_FILE_PATH,

            A.UPDATED_BY = p_mpf_user_id,

            A.UPDATE_DATE = SYSDATE;



    v_count := SQL%ROWCOUNT;

    write_log('更新 ' || v_count || ' 个文件的FILE_PATH');



    -- 8. 同步权限（从目标文件夹复制权限到所有转移的文件）

    write_log('开始同步权限...');



    FOR i IN 1..v_file_infos.COUNT LOOP

        BEGIN

            -- 删除原有的权限

            DELETE FROM STS_SCOPE

            WHERE REFERENCE_ID = v_file_infos(i).file_id

              AND REFERENCE_TYPE = 'FILE';



            -- 从目标文件夹复制权限

            INSERT INTO STS_SCOPE(

                REFERENCE_ID,

                REFERENCE_TYPE,

                USER_ID,

                SOURCE_USER_ID,

                PERMISSIONS_TYPE,

                CREATED_BY,

                CREATION_DATE,

                UPDATED_BY,

                UPDATE_DATE,

                RANGE_TYPE,

                RANGE_ID

            )

            SELECT

                v_file_infos(i).file_id,

                REFERENCE_TYPE,

                USER_ID,

                SOURCE_USER_ID,

                PERMISSIONS_TYPE,

                p_mpf_user_id,

                SYSDATE,

                p_mpf_user_id,

                SYSDATE,

                RANGE_TYPE,

                RANGE_ID

            FROM STS_SCOPE

            WHERE REFERENCE_TYPE = 'FILE'

              AND REFERENCE_ID = p_target_folder_id;



            write_log('同步权限: 文件 ' || v_file_infos(i).file_name || ' (ID:' || v_file_infos(i).file_id || ')');



        EXCEPTION

            WHEN OTHERS THEN

                write_log('同步权限失败: ' || v_file_infos(i).file_name || ' (ID:' || v_file_infos(i).file_id || ') - ' || SQLERRM);

        END;

    END LOOP;



    -- 9. 递归同步子文件的权限

    write_log('开始递归同步子文件权限...');



    -- 这里可以添加递归同步子文件权限的逻辑，如果需要的话

    -- 由于可能涉及大量数据，建议在实际使用时根据性能需求决定是否实现



    -- 10. 统计信息

    SELECT COUNT(*) INTO p_processed_count

    FROM STS_FILE

    WHERE FILE_ID IN (SELECT column_value FROM TABLE(v_old_files))

      AND PARENT_FOLDER_ID = p_target_folder_id

      AND DEL_FLAG = 0

      AND TENANT_ID = p_user_tenant;



    -- 设置成功输出参数

    p_success := 'Y';

    p_message := '文件转移操作完成！成功转移 ' || p_processed_count || ' 个文件';



    write_log('文件转移操作完成！成功转移 ' || p_processed_count || ' 个文件');



    -- 统计目标目录下的总文件数

    SELECT COUNT(*) INTO v_count

    FROM STS_FILE

    WHERE ROOT_FOLDER_ID = v_target_root_id

      AND DEL_FLAG = 0

      AND TENANT_ID = p_user_tenant;



    write_log('目标目录下总文件数: ' || v_count);



    COMMIT;

    write_log('✅ 文件转移操作完成！');



EXCEPTION

    WHEN v_target_not_found THEN

        write_log('❌ 错误: ' || SQLERRM);

        ROLLBACK;

        p_success := 'N';

        p_message := SQLERRM;

    WHEN OTHERS THEN

        write_log('❌ 错误代码: ' || SQLCODE || ', 错误信息: ' || SQLERRM);

        write_log('文件转移操作失败');

        ROLLBACK;

        p_success := 'N';

        p_message := '错误代码: ' || SQLCODE || ', 错误信息: ' || SQLERRM;

        RAISE;

END sts_transfer_files_to_folder_pro;

