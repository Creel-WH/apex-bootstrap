CREATE OR REPLACE EDITIONABLE FUNCTION fmp_resolve_url_basic(
    p_url       IN VARCHAR2,
    p_user_name IN OUT VARCHAR2
) RETURN BOOLEAN
AS
BEGIN
    RETURN sts_resolve_url_basic(
        p_url,
        p_user_name
    );
END;
/
