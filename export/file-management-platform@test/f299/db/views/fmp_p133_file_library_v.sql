CREATE OR REPLACE FORCE EDITIONABLE VIEW "FMP_P133_FILE_LIBRARY_V" (
    "FILE_ID",
    "ROOT_FOLDER_ID",
    "PARENT_FOLDER_ID",
    "FILE_NAME",
    "FILE_DISPLAY_NAME",
    "CARD_DISPLAY_NAME",
    "FILE_FORMAT",
    "SORT_NUM_VALUE",
    "FILE_TYPE",
    "TYPE_LABEL",
    "ICON_TYPE",
    "ICON_CLASS",
    "UPDATED_BY_DISPLAY",
    "UPDATE_DATE",
    "CREATION_DATE",
    "SCOPE_TYPE",
    "FILE_VERSION_TAG",
    "IS_HIDE",
    "IS_FILE_TYPE",
    "TENANT_ID",
    "SYSTEM_ID",
    "DEL_FLAG"
) AS
    SELECT a.file_id,
           a.root_folder_id,
           a.parent_folder_id,
           a.file_name,
           CASE
               WHEN LENGTH(a.file_name) > 50 THEN SUBSTR(a.file_name, 1, 50) || '...'
               ELSE a.file_name
           END AS file_display_name,
           CASE
               WHEN LENGTH(a.file_name) > 10 THEN SUBSTR(a.file_name, 1, 10) || '...'
               ELSE a.file_name
           END AS card_display_name,
           a.file_format,
           a.sort_num AS sort_num_value,
           a.file_type,
           CASE
               WHEN a.file_type = 'FOLDER' THEN CAST(unistr('\6587\4EF6\5939') AS VARCHAR2(30 CHAR))
               ELSE NVL(a.file_format, CAST(unistr('\6587\4EF6') AS VARCHAR2(30 CHAR)))
           END AS type_label,
           CASE
               WHEN a.file_type = 'FOLDER' THEN 'folder'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('doc', 'docx', 'wps') THEN 'word'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) = 'pdf' THEN 'pdf'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('xls', 'xlsx', 'csv') THEN 'excel'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('ppt', 'pptx') THEN 'ppt'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('txt', 'rtf') THEN 'txt'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) = 'md' THEN 'md'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('png', 'jpg', 'jpeg', 'gif', 'bmp', 'webp', 'svg') THEN 'image'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('mp4', 'avi', 'mov', 'wmv', 'mkv', 'flv') THEN 'video'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('mp3', 'wav', 'flac', 'aac', 'ogg') THEN 'audio'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('html', 'css', 'js', 'ts', 'json', 'xml', 'sql', 'java', 'py', 'cs', 'cpp', 'c', 'go', 'php', 'vue') THEN 'code'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('zip', 'rar', '7z', 'tar', 'gz') THEN 'zip'
               ELSE 'other'
           END AS icon_type,
           CASE
               WHEN a.file_type = 'FOLDER' THEN 'ri-folder-3-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('doc', 'docx', 'wps') THEN 'ri-file-word-2-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) = 'pdf' THEN 'ri-file-pdf-2-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('xls', 'xlsx', 'csv') THEN 'ri-file-excel-2-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('ppt', 'pptx') THEN 'ri-file-ppt-2-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('txt', 'rtf') THEN 'ri-file-text-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) = 'md' THEN 'ri-markdown-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('png', 'jpg', 'jpeg', 'gif', 'bmp', 'webp', 'svg') THEN 'ri-image-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('mp4', 'avi', 'mov', 'wmv', 'mkv', 'flv') THEN 'ri-video-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('mp3', 'wav', 'flac', 'aac', 'ogg') THEN 'ri-music-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('html', 'css', 'js', 'ts', 'json', 'xml', 'sql', 'java', 'py', 'cs', 'cpp', 'c', 'go', 'php', 'vue') THEN 'ri-file-code-fill'
               WHEN LOWER(LTRIM(NVL(NULLIF(a.file_format, ''), REGEXP_SUBSTR(a.file_name, '\.([^.]+)$', 1, 1, NULL, 1)), '.')) IN ('zip', 'rar', '7z', 'tar', 'gz') THEN 'ri-folder-zip-fill'
               ELSE 'ri-file-3-fill'
           END AS icon_class,
           NVL(u.name, NVL(fu.user_name, TO_CHAR(NVL(a.updated_by, a.created_by)))) AS updated_by_display,
           a.update_date,
           a.creation_date,
           a.scope_type,
           a.file_version_tag,
           CASE
               WHEN a.file_type = 'FOLDER' THEN 0
               ELSE 1
           END AS is_hide,
           CASE
               WHEN a.file_type = 'FOLDER' THEN 0
               ELSE 1
           END AS is_file_type,
           a.tenant_id,
           a.system_id,
           a.del_flag
      FROM fmp_file a
      LEFT JOIN basic_user u
        ON u.user_id = NVL(a.updated_by, a.created_by)
       AND u.tenant_id = a.tenant_id
       AND u.del_flag = 0
      LEFT JOIN fmp_user fu
        ON fu.user_id = NVL(a.updated_by, a.created_by)
       AND fu.tenant_id = a.tenant_id
       AND NVL(fu.del_flag, 0) = 0;
