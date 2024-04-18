set parameterpolicy isolate
set feedback off
set verify   off

@ _runscript variables.sql

@ _runscript cleanup.sql

@ _runscript create-administrator.sql

@ _runscript create-user.sql

@ _runscript create-flashback-archive.sql

@ _runscript create-tables.sql

@ _runscript register-application.sql

@ _runscript add-tables-to-application.sql

@ _runscript enable-application.sql

@            wait-n-secs.sql 1

@ _runscript context-package.sql

-- @ _runscript demo-hlp-package.sql

-- begin
-- --
-- -- WAIT 15 SECONDS!!!
-- --
--    dbms_session.sleep(25);
-- end;
-- /

@ _runscript set-context-level.sql

@ _runscript set-ctx-val-1

@ _runscript init-insert.sql

@ _runscript set-ctx-val-2.sql

@ _runscript fix-typo.sql

@ _runscript decrease-debit-limit.sql

@  queries.sql

-- runscript exec-plan-regular.sql

-- runscript exec-plan-as-of.sql

exit
