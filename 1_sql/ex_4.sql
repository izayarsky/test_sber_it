-- PostgreSQL

CREATE FUNCTION test(d date) RETURNS TABLE(f_res date)
AS $$ SELECT * FROM UNNEST(ARRAY[$1, date($1) - integer '7', date($1) - integer '14', date($1) - integer '21']) AS f_res $$
LANGUAGE SQL;