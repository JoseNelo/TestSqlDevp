--
-- -----------------------------------------------------------------------------------
-- File Name    : mv_lob_indx.sql
-- Author       : Conexia
-- Description  : Move lob index to another tablespace.
-- Call Syntax  : @mv_lob_index
-- Last Modified: 06/09/2018
-- ----------------------------------------------------------------------------------- 
--
SET VERIFY OFF
alter table  MESSAGE.MESSAGE_RESPONSE move lob (MESSAGE) store as (tablespace INDEX01);
alter table  MESSAGE.MESSAGE_REQUEST_EBM move lob (MESSAGE) store as (tablespace INDEX01);
alter table  MESSAGE.MESSAGE_REQUEST move lob (MESSAGE) store as (tablespace INDEX01);
alter table  MESSAGE.MESSAGE_RESPONSE_EBM move lob (MESSAGE) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_DIAG_IDX$R move lob (DATA) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$I move lob (TOKEN_INFO) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_TYP_IDX$R move lob (DATA) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_IDX$I move lob (TOKEN_INFO) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_DIAG_IDX$I move lob (TOKEN_INFO) store as (tablespace INDEX01);
alter table  PARAMETERS.DR$CTX_PAR_PROC_IDX$R move lob (DATA) store as (tablespace INDEX01);
exit;
