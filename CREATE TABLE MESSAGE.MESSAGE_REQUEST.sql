--------------------------------------------------------
--  DDL for Table MESSAGE_REQUEST
--------------------------------------------------------

  CREATE TABLE "MESSAGE"."MESSAGE_REQUEST" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41226 CACHE 20 NOORDER  NOCYCLE , 
	"MESSAGE" CLOB, 
	"DATE_RECEIVED" TIMESTAMP (6) DEFAULT SYSTIMESTAMP, 
	"EVENT_TYPE" VARCHAR2(30 BYTE), 
	"ACCESS_POINT" VARCHAR2(30 BYTE), 
	"REQUEST_TYPE" VARCHAR2(10 BYTE), 
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
  TABLESPACE "DATA01" 
 LOB ("MESSAGE") STORE AS SECUREFILE (
  TABLESPACE "INDEX01" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Index MESSAGE_REQUEST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MESSAGE"."MESSAGE_REQUEST_PK" ON "MESSAGE"."MESSAGE_REQUEST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01" ;
--------------------------------------------------------
--  Constraints for Table MESSAGE_REQUEST
--------------------------------------------------------

  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" ADD CONSTRAINT "MESSAGE_REQUEST_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "INDEX01"  ENABLE;
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("VERSION" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("DELETED" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("DATE_INSERT" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("REQUEST_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("ACCESS_POINT" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("EVENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("DATE_RECEIVED" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "MESSAGE"."MESSAGE_REQUEST" MODIFY ("ID" NOT NULL ENABLE);
