connect fba_admin/fba_admin@&db

create flashback archive
--  default            -- Make this flashback archive the default archive / must be logged in as sysdba for this option (ORA-55611)
    tq84_fba           -- Name of the archive
    tablespace   users -- Name of the tablespace where archive will reside
    quota        50g   -- 50 GB is more than sufficient for this demo.
    retention 1  year  -- FDA guarantees to store data for 1 year
 -- optimize     data  -- License for advanced compression required!
 ;

 grant flashback archive on tq84_fba to fba_user;
