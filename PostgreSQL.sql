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

-- 2022-11-15 (Tue)
DELETE FROM public.TABLE_NAME
SELECT summ::JSON ->> 'job_info' FROM public.log_table

SELECT 
  * 
FROM 
  t_table 
WHERE 
  date = (SELECT MAX(date) FROM t_table);

-- 2022-11-16 (Wed)
SELECT
    TO_CHAR(10000.0000, 'FM999,999,990') -- 10,000
    , TO_CHAR(10000.0000, 'FM999,999.99') -- 10,000.
    , TO_CHAR(10000.0000, 'FM999,999.00') -- 10,000.00
    , TO_CHAR(10000.0000, 'FM999.00') -- ###.##   
;

-- SELECT ARRAY_TO_JSON(ARRAY_AGG(item)) FROM table AS item 
-- SELECT json_array_elements(array.item) ->> 'key' FROM table as array

-- 2022-11-17 (Thu)
SELECT
    SUBSTRING('abcdefg', 1) -- abcdefg
    , SUBSTRING('abcdefg', 2) -- bcdefg
    , SUBSTRING('abcdefg', 3) -- cdefg
    , SUBSTRING('abcdefg', 1, 2) -- ab
    , SUBSTRING('abcdefg', 1, 3) -- abc
    , SUBSTRING('abcdefg', 1, 4) -- abcd
    , SUBSTRING('abcdefg', 2, 3) -- bcd

-- split_part()

-- 2022-11-18 (Fri)
-- SELECT AVG()

-- 2022-11-19 (Sat)
-- SELECT STDDEV()

-- 2022-11-21 (Mon)
SELECT 
  full_address AS first_address
  , full_address AS last_address
FROM addr_table

