begin
   tq84_fba_ctx_pkg.ctx_val('change reason', 'Decrease debit limit');
   update tq84_config_val set val = 1500.00 where opt_id = 3;
   commit;
-- tq84_fba_demo_hlp.capture('Decrease debit limit');
   tq84_fba_demo_hlp.commit_('Decrease debit limit');
end;
/
