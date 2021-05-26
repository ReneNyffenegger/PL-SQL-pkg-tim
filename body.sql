create or replace package body tim as

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

end tim;
/

show errors
