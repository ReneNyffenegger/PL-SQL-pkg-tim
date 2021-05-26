select
   tim.s_ago(sysdate       - 1/24       ) s_ago_dt,
   tim.s_ago(systimestamp  - 1/24       ) s_ago_ts,
   tim.to_s (to_dsinterval('1 00:01:01')) int_to_s
from
   dual;
