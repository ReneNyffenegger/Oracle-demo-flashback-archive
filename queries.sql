select
   opt.nam,
   val.val
from
   tq84_config_opt opt                        join
   tq84_config_val val on opt.id = val.opt_id
;

select
   val.*,
   val.versions_starttime,
   val.versions_endtime,
   val.versions_operation,
   val.versions_startscn,
   val.versions_endscn,
   val.versions_xid
from
   tq84_config_val versions between scn minvalue and maxvalue val
;

select
   opt.*,
   opt.versions_starttime,
   opt.versions_endtime,
   opt.versions_operation,
   opt.versions_startscn,
   opt.versions_endscn,
   opt.versions_xid
from
   tq84_config_opt versions between scn  minvalue and maxvalue opt
;

select
   opt.nam,
   val.val
from
   tq84_config_opt as of timestamp tq84_fba_demo_hlp.ts('init') opt                        join
   tq84_config_val as of timestamp tq84_fba_demo_hlp.ts('init') val on opt.id = val.opt_id
;

select
   opt.nam,
   val.val
from
   tq84_config_opt as of timestamp tq84_fba_demo_hlp.ts('fix typo') opt                        join
   tq84_config_val as of timestamp tq84_fba_demo_hlp.ts('fix typo') val on opt.id = val.opt_id
;

select
   opt.nam,
   val.val
from
   tq84_config_opt as of timestamp tq84_fba_demo_hlp.ts('Decrease debit limit')  opt                        join
   tq84_config_val as of timestamp tq84_fba_demo_hlp.ts('Decrease debit limit')  val on opt.id = val.opt_id
;

select
   val.*,
   dbms_flashback_archive.get_sys_context(val.versions_xid, 'tq84_fba_ctx','change reason') AS change_reason
from
   tq84_config_opt versions between scn minvalue and maxvalue val
;
