argument 1 prompt "Sleep duration in seconds"
@_blue-text "sleeping for &1 seconds."
begin
--
-- Taking a nap seems necessary to prevent
--    ORA-08186: invalid timestamp specified
-- when using the versions timestamp timestamp '…' clause.
--
   dbms_session.sleep(&1);
end;
/
