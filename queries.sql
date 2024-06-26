select
   opt.nam,
   val.val
from
   tq84_config_opt opt                        join
   tq84_config_val val on opt.id = val.opt_id
;

@_blue-text "select all versions in tq84_config_val"

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

@_blue-text "select all versions in tq84_config_opt"

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

@_blue-text "select data as of ts_init (&ts_init)"
prompt @|cyan,intensity_bold Note the typo Penalyt|@
select
   opt.nam,
   val.val
from
   tq84_config_opt as of timestamp timestamp '&ts_init'     opt                         join
   tq84_config_val as of timestamp timestamp '&ts_init'     val on opt.id = val.opt_id
;


@_blue-text "select data as of ts_fix_typo (&ts_fix_typo)"
prompt @|cyan,intensity_bold The typo should be fixed (Penalyt -> Penalty), but Debit Limit is still 2000|@

select
   opt.nam,
   val.val
from
   tq84_config_opt as of timestamp timestamp '&ts_fix_typo' opt                         join
   tq84_config_val as of timestamp timestamp '&ts_fix_typo' val on opt.id = val.opt_id
;

@_blue-text "select data as of ts_decrease_debit_limit (&ts_decrease_debit_limit)"
prompt @|cyan,intensity_bold Debit Limit is now decreased to 1500|@

select
   opt.nam,
   val.val
from
   tq84_config_opt as of timestamp timestamp '&ts_decrease_debit_limit'  opt                         join
   tq84_config_val as of timestamp timestamp '&ts_decrease_debit_limit'  val on opt.id = val.opt_id
;

-- @_blue-text "select change reason context value"
--
-- select
--    val.*,
--    dbms_flashback_archive.get_sys_context(val.versions_xid, 'tq84_fba_ctx','change reason') AS change_reason
-- from
--    tq84_config_opt versions between scn minvalue and maxvalue val
-- ;
