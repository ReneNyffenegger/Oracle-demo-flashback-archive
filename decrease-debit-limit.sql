begin
   tq84_fba_ctx_pkg.ctx_val('change reason', 'Decrease debit limit');
   update tq84_config_val set val = 1500.00 where opt_id = 3;
end;
/

@ _commit decrease_debit_limit
