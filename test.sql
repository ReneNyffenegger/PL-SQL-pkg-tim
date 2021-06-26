@spec
@body

begin

   if tim.s_ago(sysdate       - 1/24       ) != 3600 then
      raise_application_error(-20800, 'tim.s_ago(date)');
   end if;

   if tim.s_ago(systimestamp  - 1/24       ) != 3600 then
      raise_application_error(-20800, 'tim.s_ago(systimestamp)');
   end if;

   if tim.to_s (to_dsinterval('1 00:01:01')) != 86461 then
      raise_application_error(-20800, 'tim.to_s');
   end if;

   if tim.iso_8601(date '2021-06-26') != '2021-06-26T00:00:00Z' then
      raise_application_error(-20800, 'tim.iso_8601');
   end if;

   if tim.iso_8601(timestamp '2021-06-26 11:57:18.123') != '2021-06-26T11:57:18.123Z' then
      raise_application_error(-20800, 'tim.iso_8601');
   end if;

   if tim.iso_8601(timestamp '2021-06-26 11:57:18.123+02:00') != '2021-06-26T11:57:18.123+02:00' then
      raise_application_error(-20800, 'tim.iso_8601');
   end if;

end;
/
