connect fba_admin/fba_admin@&db

begin
   dbms_flashback_archive.set_context_level('ALL' );
-- dbms_flashback_archive.set_context_level('NONE');
end;
/
