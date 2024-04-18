connect fba_admin/fba_admin@&db


begin
   dbms_flashback_archive.remove_table_from_application('TQ84_FBA_DEMO_APP', 'TQ84_CONFIG_OPT', 'FBA_USER');
   dbms_flashback_archive.remove_table_from_application('TQ84_FBA_DEMO_APP', 'TQ84_CONFIG_VAL', 'FBA_USER');
end;
/

declare
   cnt integer;
begin
   dbms_flashback_archive.drop_application('TQ84_FBA_DEMO_APP');
end;
/

drop flashback archive tq84_fba;

connect fba_user/fba_user@&db

drop   table tq84_config_val;
drop   table tq84_config_opt;

connect &syspw@&db as sysdba

begin
--
-- Does this sleep prevent the following errors?
--    ORA-00604: Error occurred at recursive SQL level 1. Check subsequent errors.
--    ORA-55622: DML, ALTER and CREATE UNIQUE INDEX operations are not allowed on table "FBA_USER"."SYS_FBA_TCRV_98060"
   dbms_session.sleep(5);
end;
/

drop user fba_user  cascade;
drop user fba_admin cascade;
