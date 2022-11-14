-- 2022-11-10 (Thu)
SELECT 
  'YYYY-MM-DD HH24:MI:SS'
  , 'YYYY-MM-DD HH24:MI:00'
  , 'YYYY-MM-DD HH24:00:00'
  , 'YYYY-MM-DD 00:00:00'

RAISE NOTICE 'from = %', from;

-- 2022-11-11 (Fri)
SELECT CASE WHEN 1=1 THEN 1 ELSE 2 END AS result;  

SELECT COALESCE(1, 2); -- 1
SELECT COALESCE(NULL, 3); -- 3

SELECT '20221101'::TIMESTAMP <= '20221122'::TIMESTAMP -- TRUE

-- 2022-11-14 (Mon)
SELECT UPPER('sun') -- SUN
SELECT LOWER('EARTH') -- earth
