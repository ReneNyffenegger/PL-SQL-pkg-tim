create or replace package tim as

    function s_ago(dt  date                  ) return number;
    function s_ago(ts  timestamp             ) return number;
    function to_s (int interval day to second) return number;

end tim;
/
