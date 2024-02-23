begin
   dbms_flashback_archive.add_table_to_application(
      application_name => 'TQ84_FBA_DEMO_APP', -- must be uppercase
      table_name       => 'TQ84_CONFIG_OPT',
      schema_name      => 'FBA_USER'
   );

   dbms_flashback_archive.add_table_to_application(
      application_name => 'TQ84_FBA_DEMO_APP',
      table_name       => 'TQ84_CONFIG_VAL',
      schema_name      => 'FBA_USER'
   );
end;
/
