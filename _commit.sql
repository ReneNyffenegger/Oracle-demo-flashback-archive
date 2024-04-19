argument 1 prompt "commit id"

@_blue-text "Commit (&1) and determine timestamp and scn"

column scn new_value  scn_&1
column ts  new_value  ts_&1
   
set termout off
select
   to_char(systimestamp + interval '6' second, 'yyyy-mm-dd hh24:mi:ss')      ts,
   dbms_flashback.get_system_change_number                                   scn
from
   dual;
set termout on

begin
   commit;
   dbms_session.sleep(6);
end;
/

