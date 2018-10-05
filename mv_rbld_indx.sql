REM Move LOB objects to data01 tablespace
REM
alter table  MESSAGE.MESSAGE_REQUEST_EBM move lob (MESSAGE) store as (tablespace DATA01);
alter table  MESSAGE.MESSAGE_RESPONSE_EBM move lob (MESSAGE) store as (tablespace DATA01);
alter table  MESSAGE.MESSAGE_RESPONSE move lob (MESSAGE) store as (tablespace DATA01);
alter table  MESSAGE.MESSAGE_REQUEST move lob (MESSAGE) store as (tablespace DATA01);
REM Rebuild indexes
alter index MESSAGE.MESSAGE_REQUEST_PK rebuild online;
alter index MESSAGE.MESSAGE_RESPONSE_PK rebuild online;
alter index MESSAGE.MESSAGE_RESPONSE_EBM_PK rebuild online;
alter index MESSAGE.MESSAGE_REQUEST_EBM_PK rebuild online;
exit;
