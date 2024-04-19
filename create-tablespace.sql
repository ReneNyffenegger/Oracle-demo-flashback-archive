create tablespace tq84_fba_ts datafile size 4g autoextend off;

--
-- Prevent ORA-01950: The user FBA_ADMIN has insufficient quota on tablespace TQ84_FBA_TS.
-- when FBA_ADMIN executes CREATE FLASHBACK ARCHIVE using the new tablespace:
--
alter user fba_admin quota unlimited on tq84_fba_ts;

--
-- The user also needs a quota on the tablespace
--
alter user fba_user  quota unlimited on tq84_fba_ts;
