create or replace TYPE                             TYPE_RFA_ROWS AS OBJECT 
( /* desc transactional.rfa */
ID                                                     NUMBER(10),
 CLAIM_ID                                               NUMBER(10),
 CLAIM_NUMBER                                           VARCHAR2(30),
 DATE_OF_INJURY                                         DATE,
 JURISDICTION                                           VARCHAR2(50),
 SF_REQUEST_ID                                          VARCHAR2(30),
 DATE_INSERT                                            TIMESTAMP(6),
 DATE_UPDATE                                            TIMESTAMP(6),
 DATE_DELETE                                            TIMESTAMP(6),
 DELETED                                                VARCHAR2(1),
 VERSION                                                NUMBER(6),
 USER_REQUEST_ID                                        VARCHAR2(240)
)




create or replace TYPE               T_RECORD_T_TABLE_RFA 
AS TABLE OF TYPE_RFA_ROWS /* datatype */;

create or replace FUNCTION GET_RFA_BY_SF_REQUEST_NEW ( p_sf_request_id number)
RETURN TRANSACTIONAL.T_RECORD_T_TABLE_RFA
AS
   /* */
   type T_TABLE_RFA is TABLE OF transactional.rfa%rowtype;
   v_table transactional.T_RECORD_T_TABLE_RFA;
BEGIN
   SELECT  transactional.TYPE_RFA_ROWS
   (ID,
   CLAIM_ID,
   CLAIM_NUMBER,
   DATE_OF_INJURY,
   JURISDICTION,
   SF_REQUEST_ID,
   DATE_INSERT,
   DATE_UPDATE,
   DATE_DELETE,
   DELETED,
   VERSION,
   USER_REQUEST_ID)
   BULK COLLECT   INTO v_table
   FROM           TRANSACTIONAL.RFA rfa
   --where rownum <= p_sf_request_id;
   WHERE id = p_sf_request_id;
   RETURN v_table;
END GET_RFA_BY_SF_REQUEST_NEW;




