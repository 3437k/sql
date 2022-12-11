-- 2022-12-11 (Sun)
select 
	random()
	, random() * 10
	, (random() * 10)::INT
	, ((random() * 10) + 1)::INT

SELECT 
  * 
FROM 
  base_table WHERE 
WHERE random() < 0.5
LIMIT 10;
