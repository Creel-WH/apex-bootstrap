CREATE OR REPLACE EDITIONABLE PROCEDURE import_fmp_file_proc(
    p_xlsx_worksheet IN VARCHAR2,
    p_file           IN VARCHAR2,
    p_flag           OUT VARCHAR2
)
AS
BEGIN
    import_sts_file_proc(
        p_xlsx_worksheet,
        p_file,
        p_flag
    );
END;
/
