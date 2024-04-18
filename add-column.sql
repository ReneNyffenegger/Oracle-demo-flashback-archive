alter table tq84_config_opt add category varchar2(10);

update tq84_config_opt set category = case
  when nam like '%Limit%'   then 'limit'
  when nam like '%Fee%'     then 'fee'
  when nam like '%Penalty%' then 'fee'
  else                            '?' end;

@_commit added_column

alter table tq84_config_opt modify category not null;
