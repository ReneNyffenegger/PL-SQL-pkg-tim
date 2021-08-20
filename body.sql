create or replace package body tim as
 --
 -- Version 0.4
 --

    function s_ago(dt date) return number is -- {
    begin
       return round((sysdate - dt) * 60*60*24);
    end s_ago; -- }

    function s_ago(ts timestamp) return number is -- {
    begin
       return round(to_s(systimestamp - ts));
    end s_ago; -- }

    function to_s(int interval day to second) return number is -- {
    begin
       return
             extract( second from int ) +
             extract( minute from int ) * 60 +
             extract( hour   from int ) * 60 * 60 +
             extract( day    from int ) * 60 * 60 * 24;

    end to_s; -- }

    function iso_8601(dt date) return varchar2 is -- {
    begin
        return to_char(dt,'YYYY-MM-DD"T"HH24:MI:SS"Z"');
    end iso_8601; -- }

    function iso_8601(ts timestamp) return varchar2 is -- {
    begin
        return to_char(ts,'YYYY-MM-DD"T"HH24:MI:SS.FF3"Z"');

    end iso_8601; -- }

    function iso_8601(ts timestamp with time zone) return varchar2 is -- {
    begin
        return to_char(ts,'YYYY-MM-DD"T"HH24:MI:SS.FF3TZR');
    end iso_8601; -- }

    function rfc_3339_sec(dt date) return varchar2 is
    begin
        return to_char(dt,'YYYY-MM-DD HH24:MI:SS');
    end rfc_3339_sec; -- }

end tim;
/

show errors
