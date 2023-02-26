explain plan for
select *
from
   tq84_config_val;

select * from table(dbms_xplan.display(format => 'basic'));
--
-- ---------------------------------------------
-- | Id  | Operation         | Name            |
-- ---------------------------------------------
-- |   0 | SELECT STATEMENT  |                 |
-- |   1 |  TABLE ACCESS FULL| TQ84_CONFIG_VAL |
-- ---------------------------------------------
