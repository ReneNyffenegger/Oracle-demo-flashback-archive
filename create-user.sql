create user fba_user
   identified by fba_user
   quota unlimited on users;

grant
   connect,
   create table,
   create procedure,
   create any context
to
   fba_user;

grant
   execute on dbms_flashback -- so that fba_user can execute _commit.sql
to
   fba_user
;
