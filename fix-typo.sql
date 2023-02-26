begin
   tq84_fba_ctx_pkg.ctx_val('change reason', 'fix typo');
   update tq84_config_opt set nam = 'Overdraft Penalty' where id = 6;
   commit;
-- tq84_fba_demo_hlp.capture('fix typo');
   tq84_fba_demo_hlp.commit_('fix typo');
end;
/
