connect fba_admin/fba_admin@&db

begin
   sys.dbms_flashback_archive.register_application(
        application_name       => 'tq84_fba_demo_app',
        flashback_archive_name => 'tq84_fba'
   );
end;
/
