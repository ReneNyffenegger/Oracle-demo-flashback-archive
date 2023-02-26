create or replace package tq84_fba_ctx_pkg authid definer as
   procedure ctx_val(nam in varchar2, val in varchar2);
end tq84_fba_ctx_pkg;
/

create or replace package body tq84_fba_ctx_pkg as

   procedure ctx_val (nam in varchar2, val in varchar2) as begin
       dbms_session.set_context('tq84_fba_ctx', lower(nam), val);
   end ctx_val;

end tq84_fba_ctx_pkg;
/

create or replace context tq84_fba_ctx using tq84_fba_ctx_pkg;
