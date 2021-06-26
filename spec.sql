create or replace package tim as
 --
 -- Version 0.2
 --

    function s_ago(dt  date                  ) return number;
    function s_ago(ts  timestamp             ) return number;
    function to_s (int interval day to second) return number;

    function iso_8601(dt date                    ) return varchar2;
    function iso_8601(ts timestamp               ) return varchar2;
    function iso_8601(ts timestamp with time zone) return varchar2;

end tim;
/

show errors
