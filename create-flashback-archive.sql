connect / as sysdba

create flashback archive
    default            -- Make this flashback archive the default archive
    tq84_fba           -- Name of the archive
    tablespace   data  -- Name of the tablespace where archive will reside
    quota        50g   -- 50 GB is more than sufficient for this demo.
    retention 1  year  -- FDA guarantees to store data for 1 year
 -- optimize     data  -- License for advanced compression required!
 ;
