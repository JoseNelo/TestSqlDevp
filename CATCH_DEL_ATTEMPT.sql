create or replace PROCEDURE CATCH_DEL_ATTEMPT 
(
  P_COD IN NUMBER 
) AS 
pragma autonomous_transaction;
BEGIN
    update FECHA set fecha_delete = (select sysdate from dual),DELETED = 'true'
    where cod = P_COD;
    commit;
END CATCH_DEL_ATTEMPT;