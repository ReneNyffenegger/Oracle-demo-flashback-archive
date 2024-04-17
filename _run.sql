script
Java.type("oracle.dbtools.raptor.newscriptrunner.CommandRegistry").addForAllStmtsListener(
   Java.extend(Java.type("oracle.dbtools.raptor.newscriptrunner.CommandListener"),
   {
      handleEvent: function(conn, ctx, cmd) {

         var stmt = cmd.getSql().trim();
         if ( stmt.startsWith('runscript') ) {

             var scriptName = stmt.substring("runscript".length).trim();
             print("Running \x1b[32m" + scriptName + "\x1b[0m");
             sqlcl.setStmt('@ ' + scriptName); sqlcl.run();

             return true;
         }

         return false;
      },

      beginEvent: function(conn, ctx, cmd) {},
      endEvent :  function(conn, ctx, cmd) {}

   }).class
);
/

runscript variables.sql

runscript cleanup.sql

runscript create-administrator.sql
runscript create-user.sql

runscript create-flashback-archive.sql

runscript create-tables.sql

runscript register-application.sql

runscript add-tables-to-application.sql

runscript enable-application.sql

runscript wait-20-secs.sql

runscript context-package.sql

runscript demo-hlp-package.sql

-- begin
-- --
-- -- WAIT 15 SECONDS!!!
-- --
--    dbms_session.sleep(15);
-- end;
-- /

runscript set-context-level.sql

runscript set-ctx-val-1

runscript init-insert.sql

runscript set-ctx-val-2.sql

runscript fix-typo.sql

runscript decrease-debit-limit.sql

-- runscript queries.sql

-- runscript exec-plan-regular.sql

-- runscript exec-plan-as-of.sql

exit
