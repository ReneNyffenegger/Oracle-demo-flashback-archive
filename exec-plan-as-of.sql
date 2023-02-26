explain plan for
select *
from
   tq84_config_val as of timestamp systimestamp - interval '5' minute;

select * from table(dbms_xplan.display(format => 'basic'));
--
-- ----------------------------------------------------------------------------
-- | Id  | Operation                               | Name                     |
-- ----------------------------------------------------------------------------
-- |   0 | SELECT STATEMENT                        |                          |
-- |   1 |  VIEW                                   |                          |
-- |   2 |   UNION-ALL                             |                          |
-- |   3 |    FILTER                               |                          |
-- |   4 |     PARTITION RANGE SINGLE              |                          |
-- |   5 |      TABLE ACCESS FULL                  | SYS_FBA_HIST_268912      |
-- |   6 |    FILTER                               |                          |
-- |   7 |     NESTED LOOPS OUTER                  |                          |
-- |   8 |      TABLE ACCESS FULL                  | TQ84_CONFIG_VAL          |
-- |   9 |      TABLE ACCESS BY INDEX ROWID BATCHED| SYS_FBA_TCRV_268912      |
-- |  10 |       INDEX RANGE SCAN                  | SYS_FBA_TCRV_IDX1_268912 |
-- ----------------------------------------------------------------------------
