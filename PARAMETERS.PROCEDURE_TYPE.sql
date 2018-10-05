--------------------------------------------------------
--  DDL for Table PROCEDURE_TYPE
--------------------------------------------------------

  CREATE TABLE "PARAMETERS"."PROCEDURE_TYPE" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 22 CACHE 20 NOORDER  NOCYCLE , 
	"CODE" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(50 BYTE), 
	"DATE_INSERT" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"DATE_UPDATE" TIMESTAMP (6) DEFAULT NULL, 
	"DATE_DELETE" TIMESTAMP (6) DEFAULT NULL, 
	"DELETED" VARCHAR2(1 BYTE) DEFAULT 'F', 
	"VERSION" NUMBER(6,0) DEFAULT 1, 
	"USER_REQUEST_ID" VARCHAR2(240 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA01" ;
--------------------------------------------------------
--  DDL for Index CTX_PAR_PROC_TYP_IDX
--------------------------------------------------------

  CREATE INDEX "PARAMETERS"."CTX_PAR_PROC_TYP_IDX" ON "PARAMETERS"."PROCEDURE_TYPE" ("DESCRIPTION") 
   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS ('datastore  MULTI_STORE_COD_DESC
section group  ctxsys.auto_section_group
sync    (on commit)');
--------------------------------------------------------
--  DDL for Index PAR_PROC_TYP_CODE_IDX
--------------------------------------------------------

  CREATE INDEX "PARAMETERS"."PAR_PROC_TYP_CODE_IDX" ON "PARAMETERS"."PROCEDURE_TYPE" ("CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" ;
--------------------------------------------------------
--  DDL for Index PROCEDURE_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PARAMETERS"."PROCEDURE_TYPE_PK" ON "PARAMETERS"."PROCEDURE_TYPE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" ;
--------------------------------------------------------
--  Constraints for Table PROCEDURE_TYPE
--------------------------------------------------------

  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" MODIFY ("DELETED" NOT NULL ENABLE);
  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" MODIFY ("DATE_INSERT" NOT NULL ENABLE);
  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "PARAMETERS"."PROCEDURE_TYPE" ADD CONSTRAINT "PROCEDURE_TYPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01"  ENABLE;
