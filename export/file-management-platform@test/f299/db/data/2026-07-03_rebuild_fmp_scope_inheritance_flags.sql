BEGIN
    FOR rec IN (
        SELECT file_id,
               tenant_id,
               NVL(updated_by, created_by) AS audit_user_id,
               NVL(scope_type, 'USER') AS scope_type
          FROM fmp_file
         WHERE NVL(del_flag, 0) = 0
         ORDER BY NVL(file_level, 0),
                  file_id
    ) LOOP
        fmp_rebuild_file_scope_pro(
            p_file_id                      => rec.file_id,
            p_user_tenant                  => rec.tenant_id,
            p_mpf_user_id                  => NVL(rec.audit_user_id, 0),
            p_dian_user_id                 => NULL,
            p_scope_type                   => rec.scope_type,
            p_payload                      => NULL,
            p_reset_to_parent              => 0,
            p_sync_descendants             => 0,
            p_use_parent_fallback_if_empty => 1
        );
    END LOOP;

    COMMIT;
END;
/
