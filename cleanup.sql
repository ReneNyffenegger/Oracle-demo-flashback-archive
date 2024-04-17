connect fba_admin/fba_admin@&db

begin
   dbms_flashback_archive.drop_application('TQ84_FBA_DEMO_APP');
end;
/


drop flashback archive tq84_fba;

connect fba_user/fba_user@&db

drop   table tq84_config_val;
drop   table tq84_config_opt;

connect &syspw@&db as sysdba

drop user fba_user  cascade;
drop user fba_admin cascade;
