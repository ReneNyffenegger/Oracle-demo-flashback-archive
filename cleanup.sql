connect / as sysdba

begin
   dbms_flashback_archive.drop_application('TQ84_FBA_DEMO_APP');
end;
/


drop flashback archive tq84_fba;

connect rene/rene

drop   table tq84_config_val;
drop   table tq84_config_opt;
