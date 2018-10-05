-- CONNECT SYS
ALTER SESSION SET EVENTS '10150 TRACE NAME CONTEXT FOREVER, LEVEL 1';
ALTER SESSION SET EVENTS '10904 TRACE NAME CONTEXT FOREVER, LEVEL 1';
ALTER SESSION SET EVENTS '25475 TRACE NAME CONTEXT FOREVER, LEVEL 1';
ALTER SESSION SET EVENTS '10407 TRACE NAME CONTEXT FOREVER, LEVEL 1';
ALTER SESSION SET EVENTS '10851 TRACE NAME CONTEXT FOREVER, LEVEL 1';
ALTER SESSION SET EVENTS '22830 TRACE NAME CONTEXT FOREVER, LEVEL 192 ';
-- new object type path: SCHEMA_EXPORT/USER
-- CONNECT SYSTEM
 CREATE USER "MESSAGE" IDENTIFIED BY VALUES 'S:1821326F3A00459F9C54F03A2F73C222820BBA83E2F0E9494590431BE004;H:8E0393C8FBAFB9D97A7F7D2F987D2FA3;T:6191E41ABBB4990ECDE5DD97C904138B74CFEA56AFE7ED1C836C28F6853A968F231E2AE6565892D6606A6F709A4943443F5BAFEF0A5270506904B922CDE4F880F244996CBF070557A541C0A28399231A;069999FE88C3F42C'
      DEFAULT TABLESPACE "DATA01"
      TEMPORARY TABLESPACE "TEMP";
-- new object type path: SCHEMA_EXPORT/SYSTEM_GRANT
GRANT READ ANY TABLE TO "MESSAGE";
GRANT ALTER ANY CUBE BUILD PROCESS TO "MESSAGE";
GRANT SELECT ANY CUBE BUILD PROCESS TO "MESSAGE";
GRANT ALTER ANY MEASURE FOLDER TO "MESSAGE";
GRANT SELECT ANY MEASURE FOLDER TO "MESSAGE";
GRANT EXEMPT DDL REDACTION POLICY TO "MESSAGE";
GRANT EXEMPT DML REDACTION POLICY TO "MESSAGE";
GRANT LOGMINING TO "MESSAGE";
GRANT CREATE ANY CREDENTIAL TO "MESSAGE";
GRANT CREATE CREDENTIAL TO "MESSAGE";
GRANT SET CONTAINER TO "MESSAGE";
GRANT CREATE PLUGGABLE DATABASE TO "MESSAGE";
GRANT FLASHBACK ARCHIVE ADMINISTER TO "MESSAGE";
GRANT EM EXPRESS CONNECT TO "MESSAGE";
GRANT DROP ANY SQL TRANSLATION PROFILE TO "MESSAGE";
GRANT USE ANY SQL TRANSLATION PROFILE TO "MESSAGE";
GRANT ALTER ANY SQL TRANSLATION PROFILE TO "MESSAGE";
GRANT CREATE ANY SQL TRANSLATION PROFILE TO "MESSAGE";
GRANT CREATE SQL TRANSLATION PROFILE TO "MESSAGE";
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "MESSAGE";
GRANT UPDATE ANY CUBE DIMENSION TO "MESSAGE";
GRANT UPDATE ANY CUBE BUILD PROCESS TO "MESSAGE";
GRANT DROP ANY CUBE BUILD PROCESS TO "MESSAGE";
GRANT CREATE ANY CUBE BUILD PROCESS TO "MESSAGE";
GRANT CREATE CUBE BUILD PROCESS TO "MESSAGE";
GRANT INSERT ANY MEASURE FOLDER TO "MESSAGE";
GRANT DROP ANY MEASURE FOLDER TO "MESSAGE";
GRANT DELETE ANY MEASURE FOLDER TO "MESSAGE";
GRANT CREATE ANY MEASURE FOLDER TO "MESSAGE";
GRANT CREATE MEASURE FOLDER TO "MESSAGE";
GRANT UPDATE ANY CUBE TO "MESSAGE";
GRANT SELECT ANY CUBE TO "MESSAGE";
GRANT DROP ANY CUBE TO "MESSAGE";
GRANT CREATE ANY CUBE TO "MESSAGE";
GRANT ALTER ANY CUBE TO "MESSAGE";
GRANT CREATE CUBE TO "MESSAGE";
GRANT SELECT ANY CUBE DIMENSION TO "MESSAGE";
GRANT INSERT ANY CUBE DIMENSION TO "MESSAGE";
GRANT DROP ANY CUBE DIMENSION TO "MESSAGE";
GRANT DELETE ANY CUBE DIMENSION TO "MESSAGE";
GRANT CREATE ANY CUBE DIMENSION TO "MESSAGE";
GRANT ALTER ANY CUBE DIMENSION TO "MESSAGE";
GRANT CREATE CUBE DIMENSION TO "MESSAGE";
GRANT COMMENT ANY MINING MODEL TO "MESSAGE";
GRANT ALTER ANY MINING MODEL TO "MESSAGE";
GRANT SELECT ANY MINING MODEL TO "MESSAGE";
GRANT DROP ANY MINING MODEL TO "MESSAGE";
GRANT CREATE ANY MINING MODEL TO "MESSAGE";
GRANT CREATE MINING MODEL TO "MESSAGE";
GRANT EXECUTE ASSEMBLY TO "MESSAGE";
GRANT EXECUTE ANY ASSEMBLY TO "MESSAGE";
GRANT DROP ANY ASSEMBLY TO "MESSAGE";
GRANT ALTER ANY ASSEMBLY TO "MESSAGE";
GRANT CREATE ANY ASSEMBLY TO "MESSAGE";
GRANT CREATE ASSEMBLY TO "MESSAGE";
GRANT ALTER ANY EDITION TO "MESSAGE";
GRANT DROP ANY EDITION TO "MESSAGE";
GRANT CREATE ANY EDITION TO "MESSAGE";
GRANT CREATE EXTERNAL JOB TO "MESSAGE";
GRANT CHANGE NOTIFICATION TO "MESSAGE";
GRANT CREATE ANY SQL PROFILE TO "MESSAGE";
GRANT ADMINISTER ANY SQL TUNING SET TO "MESSAGE";
GRANT ADMINISTER SQL TUNING SET TO "MESSAGE";
GRANT ALTER ANY SQL PROFILE TO "MESSAGE";
GRANT DROP ANY SQL PROFILE TO "MESSAGE";
GRANT SELECT ANY TRANSACTION TO "MESSAGE";
GRANT MANAGE SCHEDULER TO "MESSAGE";
GRANT EXECUTE ANY CLASS TO "MESSAGE";
GRANT EXECUTE ANY PROGRAM TO "MESSAGE";
GRANT CREATE ANY JOB TO "MESSAGE";
GRANT CREATE JOB TO "MESSAGE";
GRANT ADVISOR TO "MESSAGE";
GRANT IMPORT FULL DATABASE TO "MESSAGE";
GRANT EXPORT FULL DATABASE TO "MESSAGE";
GRANT GRANT ANY OBJECT PRIVILEGE TO "MESSAGE";
GRANT FLASHBACK ANY TABLE TO "MESSAGE";
GRANT DEBUG ANY PROCEDURE TO "MESSAGE";
GRANT DEBUG CONNECT SESSION TO "MESSAGE";
GRANT RESUMABLE TO "MESSAGE";
GRANT ON COMMIT REFRESH TO "MESSAGE";
GRANT MERGE ANY VIEW TO "MESSAGE";
GRANT ADMINISTER DATABASE TRIGGER TO "MESSAGE";
GRANT DROP ANY OUTLINE TO "MESSAGE";
GRANT ALTER ANY OUTLINE TO "MESSAGE";
GRANT CREATE ANY OUTLINE TO "MESSAGE";
GRANT DROP ANY CONTEXT TO "MESSAGE";
GRANT CREATE ANY CONTEXT TO "MESSAGE";
GRANT DROP ANY DIMENSION TO "MESSAGE";
GRANT ALTER ANY DIMENSION TO "MESSAGE";
GRANT CREATE ANY DIMENSION TO "MESSAGE";
GRANT CREATE DIMENSION TO "MESSAGE";
GRANT UNDER ANY TABLE TO "MESSAGE";
GRANT EXECUTE ANY INDEXTYPE TO "MESSAGE";
GRANT GLOBAL QUERY REWRITE TO "MESSAGE";
GRANT QUERY REWRITE TO "MESSAGE";
GRANT UNDER ANY VIEW TO "MESSAGE";
GRANT DROP ANY INDEXTYPE TO "MESSAGE";
GRANT ALTER ANY INDEXTYPE TO "MESSAGE";
GRANT CREATE ANY INDEXTYPE TO "MESSAGE";
GRANT CREATE INDEXTYPE TO "MESSAGE";
GRANT EXECUTE ANY OPERATOR TO "MESSAGE";
GRANT DROP ANY OPERATOR TO "MESSAGE";
GRANT ALTER ANY OPERATOR TO "MESSAGE";
GRANT CREATE ANY OPERATOR TO "MESSAGE";
GRANT CREATE OPERATOR TO "MESSAGE";
GRANT EXECUTE ANY LIBRARY TO "MESSAGE";
GRANT DROP ANY LIBRARY TO "MESSAGE";
GRANT ALTER ANY LIBRARY TO "MESSAGE";
GRANT CREATE ANY LIBRARY TO "MESSAGE";
GRANT CREATE LIBRARY TO "MESSAGE";
GRANT UNDER ANY TYPE TO "MESSAGE";
GRANT EXECUTE ANY TYPE TO "MESSAGE";
GRANT DROP ANY TYPE TO "MESSAGE";
GRANT ALTER ANY TYPE TO "MESSAGE";
GRANT CREATE ANY TYPE TO "MESSAGE";
GRANT CREATE TYPE TO "MESSAGE";
GRANT DROP ANY DIRECTORY TO "MESSAGE";
GRANT CREATE ANY DIRECTORY TO "MESSAGE";
GRANT DROP ANY MATERIALIZED VIEW TO "MESSAGE";
GRANT ALTER ANY MATERIALIZED VIEW TO "MESSAGE";
GRANT CREATE ANY MATERIALIZED VIEW TO "MESSAGE";
GRANT CREATE MATERIALIZED VIEW TO "MESSAGE";
GRANT GRANT ANY PRIVILEGE TO "MESSAGE";
GRANT ANALYZE ANY TO "MESSAGE";
GRANT ALTER RESOURCE COST TO "MESSAGE";
GRANT DROP PROFILE TO "MESSAGE";
GRANT ALTER PROFILE TO "MESSAGE";
GRANT CREATE PROFILE TO "MESSAGE";
GRANT DROP ANY TRIGGER TO "MESSAGE";
GRANT ALTER ANY TRIGGER TO "MESSAGE";
GRANT CREATE ANY TRIGGER TO "MESSAGE";
GRANT CREATE TRIGGER TO "MESSAGE";
GRANT EXECUTE ANY PROCEDURE TO "MESSAGE";
GRANT DROP ANY PROCEDURE TO "MESSAGE";
GRANT ALTER ANY PROCEDURE TO "MESSAGE";
GRANT CREATE ANY PROCEDURE TO "MESSAGE";
GRANT CREATE PROCEDURE TO "MESSAGE";
GRANT FORCE ANY TRANSACTION TO "MESSAGE";
GRANT FORCE TRANSACTION TO "MESSAGE";
GRANT ALTER DATABASE TO "MESSAGE";
GRANT AUDIT ANY TO "MESSAGE";
GRANT ALTER ANY ROLE TO "MESSAGE";
GRANT GRANT ANY ROLE TO "MESSAGE";
GRANT DROP ANY ROLE TO "MESSAGE";
GRANT CREATE ROLE TO "MESSAGE";
GRANT DROP PUBLIC DATABASE LINK TO "MESSAGE";
GRANT CREATE PUBLIC DATABASE LINK TO "MESSAGE";
GRANT CREATE DATABASE LINK TO "MESSAGE";
GRANT SELECT ANY SEQUENCE TO "MESSAGE";
GRANT DROP ANY SEQUENCE TO "MESSAGE";
GRANT ALTER ANY SEQUENCE TO "MESSAGE";
GRANT CREATE ANY SEQUENCE TO "MESSAGE";
GRANT CREATE SEQUENCE TO "MESSAGE";
GRANT DROP ANY VIEW TO "MESSAGE";
GRANT CREATE ANY VIEW TO "MESSAGE";
GRANT CREATE VIEW TO "MESSAGE";
GRANT DROP PUBLIC SYNONYM TO "MESSAGE";
GRANT CREATE PUBLIC SYNONYM TO "MESSAGE";
GRANT DROP ANY SYNONYM TO "MESSAGE";
GRANT CREATE ANY SYNONYM TO "MESSAGE";
GRANT CREATE SYNONYM TO "MESSAGE";
GRANT DROP ANY INDEX TO "MESSAGE";
GRANT ALTER ANY INDEX TO "MESSAGE";
GRANT CREATE ANY INDEX TO "MESSAGE";
GRANT DROP ANY CLUSTER TO "MESSAGE";
GRANT ALTER ANY CLUSTER TO "MESSAGE";
GRANT CREATE ANY CLUSTER TO "MESSAGE";
GRANT CREATE CLUSTER TO "MESSAGE";
GRANT REDEFINE ANY TABLE TO "MESSAGE";
GRANT DELETE ANY TABLE TO "MESSAGE";
GRANT UPDATE ANY TABLE TO "MESSAGE";
GRANT INSERT ANY TABLE TO "MESSAGE";
GRANT SELECT ANY TABLE TO "MESSAGE";
GRANT COMMENT ANY TABLE TO "MESSAGE";
GRANT LOCK ANY TABLE TO "MESSAGE";
GRANT DROP ANY TABLE TO "MESSAGE";
GRANT BACKUP ANY TABLE TO "MESSAGE";
GRANT ALTER ANY TABLE TO "MESSAGE";
GRANT CREATE ANY TABLE TO "MESSAGE";
GRANT CREATE TABLE TO "MESSAGE";
GRANT DROP ROLLBACK SEGMENT TO "MESSAGE";
GRANT ALTER ROLLBACK SEGMENT TO "MESSAGE";
GRANT CREATE ROLLBACK SEGMENT TO "MESSAGE";
GRANT DROP USER TO "MESSAGE";
GRANT ALTER USER TO "MESSAGE";
GRANT BECOME USER TO "MESSAGE";
GRANT CREATE USER TO "MESSAGE";
GRANT UNLIMITED TABLESPACE TO "MESSAGE";
GRANT DROP TABLESPACE TO "MESSAGE";
GRANT MANAGE TABLESPACE TO "MESSAGE";
GRANT ALTER TABLESPACE TO "MESSAGE";
GRANT CREATE TABLESPACE TO "MESSAGE";
GRANT RESTRICTED SESSION TO "MESSAGE";
GRANT ALTER SESSION TO "MESSAGE";
GRANT CREATE SESSION TO "MESSAGE";
GRANT AUDIT SYSTEM TO "MESSAGE";
GRANT ALTER SYSTEM TO "MESSAGE";
-- new object type path: SCHEMA_EXPORT/DEFAULT_ROLE
 ALTER USER "MESSAGE" DEFAULT ROLE ALL;
-- new object type path: SCHEMA_EXPORT/TABLESPACE_QUOTA
DECLARE 
  TEMP_COUNT NUMBER; 
  SQLSTR VARCHAR2(200); 
BEGIN 
  SQLSTR := 'ALTER USER "MESSAGE" QUOTA UNLIMITED ON "DATA01"';
  EXECUTE IMMEDIATE SQLSTR;
EXCEPTION 
  WHEN OTHERS THEN
    IF SQLCODE = -30041 THEN 
      SQLSTR := 'SELECT COUNT(*) FROM USER_TABLESPACES 
              WHERE TABLESPACE_NAME = ''DATA01'' AND CONTENTS = ''TEMPORARY''';
      EXECUTE IMMEDIATE SQLSTR INTO TEMP_COUNT;
      IF TEMP_COUNT = 1 THEN RETURN; 
      ELSE RAISE; 
      END IF;
    ELSE
      RAISE;
    END IF;
END;
/
-- new object type path: SCHEMA_EXPORT/PRE_SCHEMA/PROCACT_SCHEMA
-- CONNECT MESSAGE

BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRENT_SCHEMA'), export_db_name=>'SFT.CONEXIA.COM', inst_scn=>'3889167');
COMMIT; 
END; 
/ 
-- new object type path: SCHEMA_EXPORT/TABLE/TABLE
-- CONNECT SYS
CREATE TABLE "MESSAGE"."MESSAGE_REQUEST_RFA" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1143 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"MESSAGE_REQUEST_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"RFA_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"VERSION" NUMBER(6,0) DEFAULT 1 NOT NULL ENABLE, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE), 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F' NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" ;
CREATE TABLE "MESSAGE"."EBM_TYPE" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"CODE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F' NOT NULL ENABLE, 
	"VERSION" NUMBER(6,0) DEFAULT 1 NOT NULL ENABLE, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" ;
CREATE TABLE "MESSAGE"."MESSAGE_REQUEST_EBM" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3981 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"DIAGNOSIS_CODE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"PROCEDURE_CODE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"RFA_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"DATE_REQUESTED" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"MESSAGE" CLOB NOT NULL ENABLE, 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F' NOT NULL ENABLE, 
	"VERSION" NUMBER(6,0) DEFAULT 1 NOT NULL ENABLE, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE), 
	"EBM_TYPE_ID" NUMBER(10,0) NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" 
 LOB ("MESSAGE") STORE AS SECUREFILE (
  TABLESPACE "INDEX01" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
CREATE TABLE "MESSAGE"."MESSAGE_RESPONSE_EBM" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3861 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"MESSAGE_REQUEST_EBM_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"RESPONSE_STATUS" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"DATE_RESPONSE" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"MESSAGE" CLOB NOT NULL ENABLE, 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F' NOT NULL ENABLE, 
	"VERSION" NUMBER(6,0) DEFAULT 1 NOT NULL ENABLE, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" 
 LOB ("MESSAGE") STORE AS SECUREFILE (
  TABLESPACE "INDEX01" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
CREATE TABLE "MESSAGE"."MESSAGE_RESPONSE" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 39079 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"MESSAGE_REQUEST_ID" NUMBER(10,0) NOT NULL ENABLE, 
	"DATE_RETURNED" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"MESSAGE" CLOB NOT NULL ENABLE, 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F' NOT NULL ENABLE, 
	"VERSION" NUMBER(6,0) DEFAULT 1 NOT NULL ENABLE, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" 
 LOB ("MESSAGE") STORE AS SECUREFILE (
  TABLESPACE "INDEX01" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
CREATE TABLE "MESSAGE"."MESSAGE_REQUEST" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41226 CACHE 20 NOORDER  NOCYCLE  NOT NULL ENABLE, 
	"MESSAGE" CLOB NOT NULL ENABLE, 
	"DATE_RECEIVED" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"EVENT_TYPE" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	"ACCESS_POINT" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	"REQUEST_TYPE" VARCHAR2(10 BYTE) NOT NULL ENABLE, 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F' NOT NULL ENABLE, 
	"VERSION" NUMBER(6,0) DEFAULT 1 NOT NULL ENABLE, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" 
 LOB ("MESSAGE") STORE AS SECUREFILE (
  TABLESPACE "INDEX01" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
-- new object type path: SCHEMA_EXPORT/TABLE/GRANT/OWNER_GRANT/OBJECT_GRANT
-- CONNECT MESSAGE
GRANT UPDATE ON "MESSAGE"."MESSAGE_REQUEST_EBM" TO "APPROLE";
GRANT SELECT ON "MESSAGE"."MESSAGE_REQUEST_EBM" TO "APPROLE";
GRANT INSERT ON "MESSAGE"."MESSAGE_REQUEST_EBM" TO "APPROLE";
GRANT DELETE ON "MESSAGE"."MESSAGE_REQUEST_EBM" TO "APPROLE";
GRANT UPDATE ON "MESSAGE"."MESSAGE_RESPONSE_EBM" TO "APPROLE";
GRANT SELECT ON "MESSAGE"."MESSAGE_RESPONSE_EBM" TO "APPROLE";
GRANT INSERT ON "MESSAGE"."MESSAGE_RESPONSE_EBM" TO "APPROLE";
GRANT DELETE ON "MESSAGE"."MESSAGE_RESPONSE_EBM" TO "APPROLE";
GRANT UPDATE ON "MESSAGE"."MESSAGE_RESPONSE" TO "APPROLE";
GRANT SELECT ON "MESSAGE"."MESSAGE_RESPONSE" TO "APPROLE";
GRANT INSERT ON "MESSAGE"."MESSAGE_RESPONSE" TO "APPROLE";
GRANT DELETE ON "MESSAGE"."MESSAGE_RESPONSE" TO "APPROLE";
GRANT UPDATE ON "MESSAGE"."MESSAGE_REQUEST" TO "APPROLE";
GRANT SELECT ON "MESSAGE"."MESSAGE_REQUEST" TO "APPROLE";
GRANT INSERT ON "MESSAGE"."MESSAGE_REQUEST" TO "APPROLE";
GRANT DELETE ON "MESSAGE"."MESSAGE_REQUEST" TO "APPROLE";
GRANT UPDATE ON "MESSAGE"."MESSAGE_REQUEST_RFA" TO "APPROLE";
GRANT DELETE ON "MESSAGE"."MESSAGE_REQUEST_RFA" TO "APPROLE";
GRANT INSERT ON "MESSAGE"."MESSAGE_REQUEST_RFA" TO "APPROLE";
GRANT SELECT ON "MESSAGE"."MESSAGE_REQUEST_RFA" TO "APPROLE";
GRANT UPDATE ON "MESSAGE"."EBM_TYPE" TO "APPROLE";
GRANT SELECT ON "MESSAGE"."EBM_TYPE" TO "APPROLE";
GRANT INSERT ON "MESSAGE"."EBM_TYPE" TO "APPROLE";
GRANT DELETE ON "MESSAGE"."EBM_TYPE" TO "APPROLE";
-- new object type path: SCHEMA_EXPORT/TABLE/IDENTITY_COLUMN
-- CONNECT SYS
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_RFA" MODIFY ("ID" GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH  LIMIT VALUE  CACHE 20 NOORDER  NOCYCLE );
ALTER TABLE "MESSAGE"."EBM_TYPE" MODIFY ("ID" GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH  LIMIT VALUE  CACHE 20 NOORDER  NOCYCLE );
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_EBM" MODIFY ("ID" GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH  LIMIT VALUE  CACHE 20 NOORDER  NOCYCLE );
ALTER TABLE "MESSAGE"."MESSAGE_RESPONSE_EBM" MODIFY ("ID" GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH  LIMIT VALUE  CACHE 20 NOORDER  NOCYCLE );
ALTER TABLE "MESSAGE"."MESSAGE_RESPONSE" MODIFY ("ID" GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH  LIMIT VALUE  CACHE 20 NOORDER  NOCYCLE );
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("ID" GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH  LIMIT VALUE  CACHE 20 NOORDER  NOCYCLE );
-- new object type path: SCHEMA_EXPORT/TABLE/INDEX/INDEX
-- CONNECT MESSAGE
BEGIN 
NULL;
END;
/

BEGIN 
NULL;
END;
/

BEGIN 
NULL;
END;
/

BEGIN 
NULL;
END;
/

CREATE INDEX "MESSAGE"."MSG_EBM_TYPE_CODE" ON "MESSAGE"."EBM_TYPE" ("CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" PARALLEL 1 ;

  ALTER INDEX "MESSAGE"."MSG_EBM_TYPE_CODE" NOPARALLEL;
BEGIN 
NULL;
END;
/

BEGIN 
NULL;
END;
/

-- new object type path: SCHEMA_EXPORT/TABLE/CONSTRAINT/CONSTRAINT
-- CONNECT SYS
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_RFA" ADD CONSTRAINT "MESSAGE_REQUEST_RFA_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "MESSAGE"."MESSAGE_REQUEST_RFA_PK" ON "MESSAGE"."MESSAGE_REQUEST_RFA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" )  ENABLE;
ALTER TABLE "MESSAGE"."EBM_TYPE" ADD CONSTRAINT "EBM_TYPE_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "MESSAGE"."EBM_TYPE_PK" ON "MESSAGE"."EBM_TYPE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" )  ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_RESPONSE" ADD CONSTRAINT "MESSAGE_RESPONSE_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "MESSAGE"."MESSAGE_RESPONSE_PK" ON "MESSAGE"."MESSAGE_RESPONSE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" )  ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" ADD CONSTRAINT "MESSAGE_REQUEST_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "MESSAGE"."MESSAGE_REQUEST_PK" ON "MESSAGE"."MESSAGE_REQUEST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" )  ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_RESPONSE_EBM" ADD CONSTRAINT "MESSAGE_RESPONSE_EBM_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "MESSAGE"."MESSAGE_RESPONSE_EBM_PK" ON "MESSAGE"."MESSAGE_RESPONSE_EBM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" )  ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_EBM" ADD CONSTRAINT "MESSAGE_REQUEST_EBM_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "MESSAGE"."MESSAGE_REQUEST_EBM_PK" ON "MESSAGE"."MESSAGE_REQUEST_EBM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" )  ENABLE;
-- new object type path: SCHEMA_EXPORT/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
-- new object type path: SCHEMA_EXPORT/TABLE/CONSTRAINT/REF_CONSTRAINT
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_RFA" ADD CONSTRAINT "MESS_REQ_RFA_RFA_FK" FOREIGN KEY ("RFA_ID")
	  REFERENCES "TRANSACTIONAL"."RFA" ("ID") ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_RFA" ADD CONSTRAINT "MESS_REQ_RFA_MESS_REQ_FK" FOREIGN KEY ("MESSAGE_REQUEST_ID")
	  REFERENCES "MESSAGE"."MESSAGE_REQUEST" ("ID") ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_EBM" ADD CONSTRAINT "MESS_REQ_EBM_RFA_FK" FOREIGN KEY ("RFA_ID")
	  REFERENCES "TRANSACTIONAL"."RFA" ("ID") ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_REQUEST_EBM" ADD CONSTRAINT "MESS_REQ_EBM_EBM_FK" FOREIGN KEY ("EBM_TYPE_ID")
	  REFERENCES "MESSAGE"."EBM_TYPE" ("ID") ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_RESPONSE_EBM" ADD CONSTRAINT "MESS_RESP_EBM_MESS_REQ_EMB_FK" FOREIGN KEY ("MESSAGE_REQUEST_EBM_ID")
	  REFERENCES "MESSAGE"."MESSAGE_REQUEST_EBM" ("ID") ENABLE;
ALTER TABLE "MESSAGE"."MESSAGE_RESPONSE" ADD CONSTRAINT "MESS_RESP_MESS_REQ_FK" FOREIGN KEY ("MESSAGE_REQUEST_ID")
	  REFERENCES "MESSAGE"."MESSAGE_REQUEST" ("ID") ENABLE;
-- new object type path: SCHEMA_EXPORT/TABLE/STATISTICS/TABLE_STATISTICS
-- new object type path: SCHEMA_EXPORT/STATISTICS/MARKER
