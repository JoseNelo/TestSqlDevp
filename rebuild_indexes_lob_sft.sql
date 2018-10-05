


  select owner, table_name,index_name, status from dba_indexes
  where owner='MESSAGE'

OWNER      TABLE_NAME                          INDEX_NAME                     STATUS
---------- ----------------------------------- ------------------------------ --------
MESSAGE    MESSAGE_REQUEST_EBM                 MESSAGE_REQUEST_EBM_PK         VALID
MESSAGE    MESSAGE_RESPONSE_EBM                MESSAGE_RESPONSE_EBM_PK        VALID
MESSAGE    MESSAGE_REQUEST                     MESSAGE_REQUEST_PK             VALID
MESSAGE    MESSAGE_RESPONSE                    MESSAGE_RESPONSE_PK            VALID
MESSAGE    EBM_TYPE                            EBM_TYPE_PK                    VALID
MESSAGE    MESSAGE_REQUEST_RFA                 MESSAGE_REQUEST_RFA_PK         VALID
MESSAGE    MESSAGE_REQUEST                     SYS_IL0000046519C00002$$       VALID
MESSAGE    MESSAGE_RESPONSE                    SYS_IL0000046515C00004$$       VALID
MESSAGE    MESSAGE_RESPONSE_EBM                SYS_IL0000046511C00005$$       VALID
MESSAGE    MESSAGE_REQUEST_EBM                 SYS_IL0000046507C00006$$       VALID
MESSAGE    EBM_TYPE                            MSG_EBM_TYPE_CODE              VALID

11 rows selected.



OWNER      TABLE_NAME                          INDEX_NAME                     STATUS
---------- ----------------------------------- ------------------------------ --------
PARAMETERS DIAGNOSIS                           CTX_PAR_DIAG_IDX               VALID
PARAMETERS PROCEDURE                           CTX_PAR_PROC_IDX               VALID
PARAMETERS PROCEDURE_TYPE                      CTX_PAR_PROC_TYP_IDX           VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$I               DR$CTX_PAR_DIAG_IDX$X          VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$I               SYS_IL0000046602C00006$$       VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$K               SYS_IOT_TOP_46605              VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$N               SYS_IOT_TOP_46611              VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$R               SYS_IL0000046607C00002$$       VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$R               DRC$CTX_PAR_DIAG_IDX$R         VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$I               DR$CTX_PAR_PROC_IDX$X          VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$I               SYS_IL0000046615C00006$$       VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$K               SYS_IOT_TOP_46618              VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$N               SYS_IOT_TOP_46624              VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$R               SYS_IL0000046620C00002$$       VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$R               DRC$CTX_PAR_PROC_IDX$R         VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$I           DR$CTX_PAR_PROC_TYP_IDX$X      VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$I           SYS_IL0000046628C00006$$       VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$K           SYS_IOT_TOP_46631              VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$N           SYS_IOT_TOP_46637              VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$R           SYS_IL0000046633C00002$$       VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$R           DRC$CTX_PAR_PROC_TYP_IDX$R     VALID
PARAMETERS APPLICATION_PROPERTIES              PK_APPLICATION_PROPERTIES      VALID
PARAMETERS DIAGNOSIS                           DIAGNOSIS_PK                   VALID
PARAMETERS DIAGNOSIS                           PAR_DIAG_CODE_FX_IDX           VALID
PARAMETERS DIAGNOSIS                           PAR_DIAG_CODE_IDX              VALID
PARAMETERS DIAGNOSIS_D_LIST                    DIAGNOSIS_D_LIST_PK            VALID
PARAMETERS DIAGNOSIS_RULES                     DIAGNOSIS_RULES_PK             VALID
PARAMETERS PROCEDURE                           PROCEDURE_PK                   VALID
PARAMETERS PROCEDURE                           PAR_PROC_CODE_IDX              VALID
PARAMETERS PROCEDURE                           PAR_PROC_DATE_DEL_IDX          VALID
PARAMETERS PROCEDURE_CUSTOM_DESCRIPTION        PROCE_CUSTOM_DESCRIP_PK        VALID
PARAMETERS PROCEDURE_DIAGNOSIS_RULES           PROCEDURE_DIAGNOSIS_RULES_PK   VALID
PARAMETERS PROCEDURE_QUANTITY_RULES            PROCEDURE_QTY_RUL_PK           VALID
PARAMETERS PROCEDURE_RULES                     PROCEDURE_RULES_PK             VALID
PARAMETERS PROCEDURE_TIME_RULES                PROCEDURE_TIM_RUL_PK           VALID
PARAMETERS PROCEDURE_TYPE                      PROCEDURE_TYPE_PK              VALID
PARAMETERS PROCEDURE_TYPE                      PAR_PROC_TYP_CODE_IDX          VALID
PARAMETERS QUANTITY_RULES                      QUANTITY_RULES_PK              VALID
PARAMETERS RULES                               RULES_PK                       VALID
PARAMETERS SOURCE_OF_DECISION                  SOURCE_OF_DECISION_PK          VALID
PARAMETERS STATUS                              STATUS_PK                      VALID
PARAMETERS TIME_RULES                          TIME_RULES_PK                  VALID

42 rows selected.

OWNER      TABLE_NAME                          INDEX_NAME                     STATUS
---------- ----------------------------------- ------------------------------ --------
PARAMETERS DIAGNOSIS                           CTX_PAR_DIAG_IDX               VALID
PARAMETERS PROCEDURE                           CTX_PAR_PROC_IDX               VALID
PARAMETERS PROCEDURE_TYPE                      CTX_PAR_PROC_TYP_IDX           VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$I               DR$CTX_PAR_DIAG_IDX$X          VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$I               SYS_IL0000046602C00006$$       VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$K               SYS_IOT_TOP_46605              VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$N               SYS_IOT_TOP_46611              VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$R               SYS_IL0000046607C00002$$       VALID
PARAMETERS DR$CTX_PAR_DIAG_IDX$R               DRC$CTX_PAR_DIAG_IDX$R         VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$I               DR$CTX_PAR_PROC_IDX$X          VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$I               SYS_IL0000046615C00006$$       VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$K               SYS_IOT_TOP_46618              VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$N               SYS_IOT_TOP_46624              VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$R               SYS_IL0000046620C00002$$       VALID
PARAMETERS DR$CTX_PAR_PROC_IDX$R               DRC$CTX_PAR_PROC_IDX$R         VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$I           DR$CTX_PAR_PROC_TYP_IDX$X      VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$I           SYS_IL0000046628C00006$$       VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$K           SYS_IOT_TOP_46631              VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$N           SYS_IOT_TOP_46637              VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$R           SYS_IL0000046633C00002$$       VALID
PARAMETERS DR$CTX_PAR_PROC_TYP_IDX$R           DRC$CTX_PAR_PROC_TYP_IDX$R     VALID
PARAMETERS APPLICATION_PROPERTIES              PK_APPLICATION_PROPERTIES      VALID
PARAMETERS APPLICATION_PROPERTIES              APP_PROPERTIES_CODE_IDX        VALID
PARAMETERS DIAGNOSIS                           DIAGNOSIS_PK                   VALID
PARAMETERS DIAGNOSIS                           PAR_DIAG_CODE_FX_IDX           VALID
PARAMETERS DIAGNOSIS                           PAR_DIAG_CODE_IDX              VALID
PARAMETERS DIAGNOSIS_D_LIST                    DIAGNOSIS_D_LIST_PK            VALID
PARAMETERS DIAGNOSIS_D_LIST                    DIAGNOSIS_D_LIST_CODE_IDX      VALID
PARAMETERS DIAGNOSIS_D_LIST                    DIAG_D_LIST_DIAGNOSIS_ID_IDX   VALID
PARAMETERS DIAGNOSIS_RULES                     DIAGNOSIS_RULES_PK             VALID
PARAMETERS DIAGNOSIS_RULES                     DIAGNOSIS_RULES_CODE_IDX       VALID
PARAMETERS PROCEDURE                           PROCEDURE_PK                   VALID
PARAMETERS PROCEDURE                           PAR_PROC_CODE_IDX              VALID
PARAMETERS PROCEDURE                           PAR_PROC_DATE_DEL_IDX          VALID
PARAMETERS PROCEDURE                           PROC_PROCEDURE_TYPE_ID_IDX     VALID
PARAMETERS PROCEDURE_CUSTOM_DESCRIPTION        PROCE_CUSTOM_DESCRIP_PK        VALID
PARAMETERS PROCEDURE_CUSTOM_DESCRIPTION        PROC_CUST_DESC_PROC_ID_IDX     VALID
PARAMETERS PROCEDURE_DIAGNOSIS_RULES           PROCEDURE_DIAGNOSIS_RULES_PK   VALID
PARAMETERS PROCEDURE_DIAGNOSIS_RULES           PROC_DIAG_RUL_PROC_ID_IDX      VALID
PARAMETERS PROCEDURE_DIAGNOSIS_RULES           PROC_DIAG_RUL_DIAG_RUL_ID_IDX  VALID
PARAMETERS PROCEDURE_QUANTITY_RULES            PROCEDURE_QTY_RUL_PK           VALID
PARAMETERS PROCEDURE_QUANTITY_RULES            PROC_QTY_RULES_PROC_ID_IDX     VALID
PARAMETERS PROCEDURE_QUANTITY_RULES            PROC_QTY_RULES_QTY_RUL_ID_IDX  VALID
PARAMETERS PROCEDURE_RULES                     PROCEDURE_RULES_PK             VALID
PARAMETERS PROCEDURE_RULES                     PROC_RULES_PROC_ID_IDX         VALID
PARAMETERS PROCEDURE_RULES                     PROC_RULES_RULES_ID_IDX        VALID
PARAMETERS PROCEDURE_TIME_RULES                PROCEDURE_TIM_RUL_PK           VALID

OWNER      TABLE_NAME                          INDEX_NAME                     STATUS
---------- ----------------------------------- ------------------------------ --------
PARAMETERS PROCEDURE_TIME_RULES                PROC_TIME_RUL_PROC_ID_IDX      VALID
PARAMETERS PROCEDURE_TIME_RULES                PROC_TIME_RUL_TIME_RUL_ID_IDX  VALID
PARAMETERS PROCEDURE_TYPE                      PROCEDURE_TYPE_PK              VALID
PARAMETERS PROCEDURE_TYPE                      PAR_PROC_TYP_CODE_IDX          VALID
PARAMETERS QUANTITY_RULES                      QUANTITY_RULES_PK              VALID
PARAMETERS QUANTITY_RULES                      QUANTITY_RULES_CODE_IDX        VALID
PARAMETERS RULES                               RULES_PK                       VALID
PARAMETERS RULES                               RULES_CODE_RN_IDX              VALID
PARAMETERS RULES                               RULES_CODE_IDX                 VALID
PARAMETERS SOURCE_OF_DECISION                  SOURCE_OF_DECISION_PK          VALID
PARAMETERS SOURCE_OF_DECISION                  SOURCE_OF_DECISION_CODE_IDX    VALID
PARAMETERS STATUS                              STATUS_PK                      VALID
PARAMETERS STATUS                              STATUS_CODE_IDX                VALID
PARAMETERS TIME_RULES                          TIME_RULES_PK                  VALID
PARAMETERS TIME_RULES                          TIME_RULES_CODE_IDX            VALID

62 rows selected.

SQL>


SQL> r
  select owner, table_name,index_name, status from dba_indexes
  where owner='MESSSAGE'

OWNER                          TABLE_NAME                          INDEX_NAME                     STATUS
------------------------------ ----------------------------------- ------------------------------ --------
TRANSACTIONAL                  RFA                                 RFA_PK                         VALID
TRANSACTIONAL                  RFA_DIAGNOSIS                       RFA_DIAGNOSIS_PK               VALID
TRANSACTIONAL                  RFA_DIAGNOSIS_PROCEDURES            RFA_DIAGNOSIS_PROCEDURES_PK    VALID
TRANSACTIONAL                  RFA_PROCECURE_STATUS_HISTORY        RFA_PROC_STAT_HIST_PK          VALID
TRANSACTIONAL                  RFA_PROCEDURE                       RFA_PROCEDURE_PK               VALID


QL> r
  1  select owner, table_name,index_name, status from dba_indexes
  2* where owner='TRANSACTIONAL'

OWNER           TABLE_NAME                     INDEX_NAME                     STATUS
--------------- ------------------------------ ------------------------------ --------
TRANSACTIONAL   RFA                            RFA_CLAIM_ID_IDX               VALID
TRANSACTIONAL   RFA                            RFA_SF_REQUEST_ID_IDX          VALID
TRANSACTIONAL   RFA_DIAGNOSIS                  RFA_DIAGNOSIS_RFA_ID_IDX       VALID
TRANSACTIONAL   RFA_DIAGNOSIS                  RFA_DIAGNOSIS_DIAGNOSIS_ID_IDX VALID
TRANSACTIONAL   RFA_DIAGNOSIS_PROCEDURES       RFA_DIAG_PROC_RFA_PROC_ID_IDX  VALID
TRANSACTIONAL   RFA_DIAGNOSIS_PROCEDURES       RFA_DIAG_PROC_RFA_DIAG_ID_IDX  VALID
TRANSACTIONAL   RFA_DIAGNOSIS_PROCEDURES       RFA_DIAG_PROC_STATUS_ID_IDX    VALID
TRANSACTIONAL   RFA_PROCECURE_STATUS_HISTORY   RFA_PRC_STA_HIS_RFA_PRC_ID_IDX VALID
TRANSACTIONAL   RFA_PROCECURE_STATUS_HISTORY   RFA_PRC_STA_HIS_NEW_STA_ID_IDX VALIDjjjjAj
TRANSACTIONAL   RFA_PROCECURE_STATUS_HISTORY   RFA_PRC_STA_HIS_PRV_STA_ID_IDX VALID
TRANSACTIONAL   RFA_PROCEDURE                  RFA_PRC_RFA_ID_IDX             VALID
TRANSACTIONAL   RFA_PROCEDURE                  RFA_PRC_PRC_ID_IDX             VALID
TRANSACTIONAL   RFA_PROCEDURE                  RFA_PRC_STA_ID_IDX             VALID
TRANSACTIONAL   RFA_PROCEDURE                  RFA_PRC_SRC_OF_DECISION_ID_IDX VALID
TRANSACTIONAL   RFA_PROCEDURE                  RFA_PRC_SF_PRC_ID_IDX          VALID
TRANSACTIONAL   RFA                            RFA_PK                         VALID
TRANSACTIONAL   RFA_DIAGNOSIS                  RFA_DIAGNOSIS_PK               VALID
TRANSACTIONAL   RFA_DIAGNOSIS_PROCEDURES       RFA_DIAGNOSIS_PROCEDURES_PK    VALID
TRANSACTIONAL   RFA_PROCECURE_STATUS_HISTORY   RFA_PROC_STAT_HIST_PK          VALID
TRANSACTIONAL   RFA_PROCEDURE                  RFA_PROCEDURE_PK               VALID

20 rows selected.



SQL> r
  1  select OWNER,OBJECT_NAME,OBJECT_TYPE,CREATED from dba_objects where owner in ('MESSAGE','TRANSACTIONAL','PARAMETERS') and object_type='INDEX'
  2  and trunc(CREATED)=trunc(sysdate)
  3* order by 1,4

OWNER           OBJECT_NAME                              OBJECT_TYPE             CREATED
--------------- ---------------------------------------- ----------------------- ---------
MESSAGE         MSG_EBM_TYPE_CODE                        INDEX                   13-SEP-18
PARAMETERS      DIAG_D_LIST_DIAGNOSIS_ID_IDX             INDEX                   13-SEP-18
PARAMETERS      DIAGNOSIS_RULES_CODE_IDX                 INDEX                   13-SEP-18
PARAMETERS      PROC_DIAG_RUL_DIAG_RUL_ID_IDX            INDEX                   13-SEP-18
PARAMETERS      PROC_DIAG_RUL_PROC_ID_IDX                INDEX                   13-SEP-18
PARAMETERS      PROC_QTY_RULES_QTY_RUL_ID_IDX            INDEX                   13-SEP-18
PARAMETERS      PROC_QTY_RULES_PROC_ID_IDX               INDEX                   13-SEP-18
PARAMETERS      PROC_RULES_RULES_ID_IDX                  INDEX                   13-SEP-18
PARAMETERS      PROC_RULES_PROC_ID_IDX                   INDEX                   13-SEP-18
PARAMETERS      PROC_TIME_RUL_TIME_RUL_ID_IDX            INDEX                   13-SEP-18
PARAMETERS      PROC_TIME_RUL_PROC_ID_IDX                INDEX                   13-SEP-18
PARAMETERS      QUANTITY_RULES_CODE_IDX                  INDEX                   13-SEP-18
PARAMETERS      PROC_CUST_DESC_PROC_ID_IDX               INDEX                   13-SEP-18
PARAMETERS      PROC_PROCEDURE_TYPE_ID_IDX               INDEX                   13-SEP-18
PARAMETERS      DIAGNOSIS_D_LIST_CODE_IDX                INDEX                   13-SEP-18
PARAMETERS      APP_PROPERTIES_CODE_IDX                  INDEX                   13-SEP-18
PARAMETERS      TIME_RULES_CODE_IDX                      INDEX                   13-SEP-18
PARAMETERS      STATUS_CODE_IDX                          INDEX                   13-SEP-18
PARAMETERS      RULES_CODE_IDX                           INDEX                   13-SEP-18
PARAMETERS      RULES_CODE_RN_IDX                        INDEX                   13-SEP-18
PARAMETERS      SOURCE_OF_DECISION_CODE_IDX              INDEX                   13-SEP-18
TRANSACTIONAL   RFA_DIAG_PROC_RFA_PROC_ID_IDX            INDEX                   13-SEP-18
TRANSACTIONAL   RFA_CLAIM_ID_IDX                         INDEX                   13-SEP-18
TRANSACTIONAL   RFA_DIAGNOSIS_DIAGNOSIS_ID_IDX           INDEX                   13-SEP-18
TRANSACTIONAL   RFA_DIAGNOSIS_RFA_ID_IDX                 INDEX                   13-SEP-18
TRANSACTIONAL   RFA_SF_REQUEST_ID_IDX                    INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_PRC_ID_IDX                       INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_SF_PRC_ID_IDX                    INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_SRC_OF_DECISION_ID_IDX           INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_STA_ID_IDX                       INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_RFA_ID_IDX                       INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_STA_HIS_PRV_STA_ID_IDX           INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_STA_HIS_RFA_PRC_ID_IDX           INDEX                   13-SEP-18
TRANSACTIONAL   RFA_DIAG_PROC_STATUS_ID_IDX              INDEX                   13-SEP-18
TRANSACTIONAL   RFA_DIAG_PROC_RFA_DIAG_ID_IDX            INDEX                   13-SEP-18
TRANSACTIONAL   RFA_PRC_STA_HIS_NEW_STA_ID_IDX           INDEX                   13-SEP-18

36 rows selected.





============================================================================================



SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

'ALTERINDEX'||OWNER||'.'||INDEX_NAME||'REBUILDONLINE;'
--------------------------------------------------------------------------------
alter index PARAMETERS.DR$CTX_PAR_DIAG_IDX$X rebuild online;

SQL> alter index PARAMETERS.DR$CTX_PAR_DIAG_IDX$X rebuild online;

Index altered.

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

'ALTERINDEX'||OWNER||'.'||INDEX_NAME||'REBUILDONLINE;'
--------------------------------------------------------------------------------
alter index PARAMETERS.DRC$CTX_PAR_DIAG_IDX$R rebuild online;

SQL> alter index PARAMETERS.DRC$CTX_PAR_DIAG_IDX$R rebuild online;

Index altered.

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

'ALTERINDEX'||OWNER||'.'||INDEX_NAME||'REBUILDONLINE;'
--------------------------------------------------------------------------------
alter index PARAMETERS.DR$CTX_PAR_PROC_IDX$X rebuild online;

SQL> alter index PARAMETERS.DR$CTX_PAR_PROC_IDX$X rebuild online;

Index altered.

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

'ALTERINDEX'||OWNER||'.'||INDEX_NAME||'REBUILDONLINE;'
--------------------------------------------------------------------------------
alter index PARAMETERS.DRC$CTX_PAR_PROC_IDX$R rebuild online;

SQL> alter index PARAMETERS.DRC$CTX_PAR_PROC_IDX$R rebuild online;

Index altered.

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

'ALTERINDEX'||OWNER||'.'||INDEX_NAME||'REBUILDONLINE;'
--------------------------------------------------------------------------------
alter index PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$X rebuild online;

SQL> alter index PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$X rebuild online;

Index altered.

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

no rows selected

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

'ALTERINDEX'||OWNER||'.'||INDEX_NAME||'REBUILDONLINE;'
--------------------------------------------------------------------------------
alter index PARAMETERS.DRC$CTX_PAR_PROC_TYP_IDX$R rebuild online;

SQL> alter index PARAMETERS.DRC$CTX_PAR_PROC_TYP_IDX$R rebuild online;

Index altered.

SQL> select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE';

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

no rows selected

SQL> r
  1* select 'alter index '||owner||'.'||index_name||' rebuild online;' from dba_indexes where status='UNUSABLE'

no rows selected

SQL>




====================================================================================

alter table  PARAMETERS.DR$CTX_PAR_DIAG_IDX$I move lob (TOKEN_INFO) store as (tablespace INDEX01);

alter table  PARAMETERS.DR$CTX_PAR_DIAG_IDX$R move lob (DATA) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_IDX$I move lob (TOKEN_INFO) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_IDX$R move lob (DATA) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$I move lob (TOKEN_INFO) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$R move lob (DATA) store as (tablespace INDEX01);

ALTER INDEX PARAMETERS.DR$CTX_PAR_DIAG_IDX$X rebuild tablespace INDEX01 online;
ALTER INDEX PARAMETERS.DRC$CTX_PAR_PROC_TYP_IDX$R rebuild tablespace INDEX01 online;
ALTER INDEX PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$X rebuild tablespace INDEX01 online;
ALTER INDEX PARAMETERS.DRC$CTX_PAR_PROC_IDX$R rebuild tablespace INDEX01 online;
ALTER INDEX PARAMETERS.DR$CTX_PAR_PROC_IDX$X rebuild tablespace INDEX01 online;
ALTER INDEX PARAMETERS.DRC$CTX_PAR_DIAG_IDX$R rebuild tablespace INDEX01 online;


==============================================================================================
