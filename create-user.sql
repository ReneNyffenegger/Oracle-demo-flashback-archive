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
   execute on dbms_flashback -- for tq84_fba_demo_hlp package
to
   fba_user
;
