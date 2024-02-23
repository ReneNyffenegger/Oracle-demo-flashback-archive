connect fba_user/fba_user@&db

create or replace package tq84_fba_demo_hlp authid definer as

--  procedure capture(nam varchar2);
    function  ts     (nam varchar2) return timestamp;
    function  scn    (nam varchar2) return number;
    
    procedure commit_(nam varchar2);

end tq84_fba_demo_hlp;
/

create or replace package body tq84_fba_demo_hlp as
   type ts_scn is record (
      ts  timestamp(6) with time zone,
      scn number
   );

   type ts_scn_dict is table of ts_scn index by varchar2(20);

   ts_scns ts_scn_dict;

   procedure capture(nam varchar2) is begin
      dbms_session.sleep(4);

   --
   --    grant execute on dbms_flashback to rene
   --
      select
         systimestamp + interval '6' second,
         dbms_flashback.get_system_change_number
      into
         ts_scns(nam).ts,
         ts_scns(nam).scn
      from dual;

      dbms_session.sleep(4);

   end capture;

   function ts (nam varchar2) return timestamp is begin
       return ts_scns(nam).ts;
   end ts;

   function scn(nam varchar2) return number is begin
       return ts_scns(nam).scn;
   end scn;

   procedure commit_(nam varchar2) is begin
       dbms_session.sleep(6);
       commit;
       capture(nam);
--     dbms_session.sleep(4);
   end commit_;

end tq84_fba_demo_hlp;
/
