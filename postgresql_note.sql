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
SELECT items::JSON ->> 'item' FROM public.base_table

SELECT 
  * 
FROM 
  base_table 
WHERE 
  date = (SELECT MAX(date) FROM base_table);

-- 2022-11-16 (Wed)
SELECT
    TO_CHAR(10000.0000, 'FM999,999,990') -- 10,000
    , TO_CHAR(10000.0000, 'FM999,999.99') -- 10,000.
    , TO_CHAR(10000.0000, 'FM999,999.00') -- 10,000.00
    , TO_CHAR(10000.0000, 'FM999.00') -- ###.##   
;

-- SELECT ARRAY_TO_JSON(ARRAY_AGG(item)) FROM base_table AS item 
-- SELECT json_array_elements(array.item) ->> 'key' FROM base_table as array

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

-- 2022-11-22 (Tue)
-- INTERVAL
-- SUM(A - B) OVER(ORDER BY A ASC)
-- LEFT OUTER JOIN
-- JOIN
SELECT SUM(CASE WHEN moved = '0' THEN 1 ELSE 0 END) AS size 

-- 2022-11-24 (Thu)
-- order reserved keyword
-- INSERT INTO table (
  "order"
) VALUES (1)


-- 2022-11-25 (Fri)
SELECT MIN(target_date) FROM items
SELECT MAX(target_date) FROM items

-- 2022-11-28 (Mon)
SELECT name
FROM public.general_agent_users
GROUP BY name
;

SELECT 
  name
  , COUNT(*)
  , SUM(attending)
  , SUM(attending) / COUNT(*)
  , AVG(attending)
FROM 
  public.base_table
GROUP BY name
;

-- DELETE FROM table WHERE time >= '2022-11-28 17:00:00'; 


-- 2022-11-30 (Wed)

-- 2022-12-01 (Thu)
FOR IN SELECT LOOP
  UPDATE 
  SET
  FROM
  WHERE 
END LOOP

FOR t_info IN SELECT 
                  u.id
                  , u.name
                  , u.age 
              FROM user AS u
LOOP 
  RAISE NOTICE '%', t.info.id;
END LOOP;

UPDATE tableA as ta 
SET name = 'new'
FROM (SELECT name FROM tableB WHERE id = 1) as tb
WHERE ta.name = tb.name

-- 2022-12-05 (Mon)

-- 2022-12-06 (Tue)
TRUNCATE TABLE base_table

-- 2022-12-11 (Sun)
SELECT VERSION();

-- 2022-12-14 (Wed)
-- LEAST() 
-- GREATEST()

-- 2022-12-15 (Thu)
EXPLAIN SELECT 1; -- Display => Result
EXPLAIN ANALYZE SELECT 1; -- Display => Result, Planning Time, Execution Time 
-- UNNEST 


-- 2022-12-16 (Fri)
SELECT * FROM ga_users WHERE city = 'seoul';

SELECT DISTINCT product_name, COUNT(*) as number_orders
FROM orders
JOIN products ON orders.product_id = products.product_id
GROUP BY product_name
HAVING COUNT(*) > 10
ORDER BY num_orders DESC
LIMIT 10;


