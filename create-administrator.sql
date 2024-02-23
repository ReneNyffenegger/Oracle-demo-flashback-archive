connect &syspw@&db as sysdba

create user fba_admin
   identified by fba_admin
   quota unlimited on users;

grant
   flashback archive administer,
   create tablespace,
   connect
to
   fba_admin;

grant
   execute on dbms_flashback_archive
to
   fba_admin;
