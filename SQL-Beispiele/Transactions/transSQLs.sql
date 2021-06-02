# create a new TABLE
CREATE TABLE "SYSTEM"."MIC_ACCOUNTS" (
  "ACCOUNT_ID" NUMBER(*, 0) NOT NULL ENABLE,
  "FIRST_NAME" VARCHAR2(15 BYTE) NOT NULL ENABLE,
  "BIRTH_DATE" DATE NOT NULL ENABLE,
  "AMOUNT" NUMBER(8, 2) NOT NULL ENABLE,
  PRIMARY KEY ("ACCOUNT_ID") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  ) TABLESPACE "SYSTEM" ENABLE
) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE(
  INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
) TABLESPACE "SYSTEM";
# an insert statement ADD
INSERT INTO
  system.mic_accounts a (
    a.account_id,
    a.first_name,
    a.birth_date,
    a.amount
  )
VALUES
  (1, 'miksch', '27.01.1929', 300);