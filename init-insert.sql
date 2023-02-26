begin
   insert into tq84_config_opt (nam, id)     values ('Interest Rate'        , 1);
   insert into tq84_config_opt (nam, id)     values ('Credit Limit'         , 2);
   insert into tq84_config_opt (nam, id)     values ('Debit Limit'          , 3);
   insert into tq84_config_opt (nam, id)     values ('Transaction Fee'      , 4);
   insert into tq84_config_opt (nam, id)     values ('Wire Transfer Fee'    , 5);
   insert into tq84_config_opt (nam, id)     values ('Overdraft Penalyt'    , 6); -- Note the typo
   insert into tq84_config_opt (nam, id)     values ('ACH Transfer Limit'   , 7);
  
   insert into tq84_config_val (val, opt_id) values (    3.50, 1);
   insert into tq84_config_val (val, opt_id) values ( 5000.00, 2);
   insert into tq84_config_val (val, opt_id) values ( 2000.00, 3);
   insert into tq84_config_val (val, opt_id) values (    2.50, 4);
   insert into tq84_config_val (val, opt_id) values (   15.00, 5);
   insert into tq84_config_val (val, opt_id) values (   35.00, 6);
   insert into tq84_config_val (val, opt_id) values (10000.00, 7);

   tq84_fba_demo_hlp.commit_('init');
-- tq84_fba_demo_hlp.capture('init');
end;
/
