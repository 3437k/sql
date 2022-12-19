-- 2022-11-18 (Fri)
SELECT 
	GETDATE()			       -- 2022-11-18 11:20:40.890
	, CONVERT(date, GETDATE()) -- 2022-11-18

-- 2022-11-21 (Mon)
SELECT value FROM STRING_SPLIT('Seoul Busan', ' ');

-- 2022-11-28 (Mon)
SUM(CONVERT(INTEGER, d1))

-- 2022-12-19 (Mon)
-- (getdate() - regist_dd) AS [Number of Days]
-- refactor 
DATEDIFF(day, target_date, GETDATE()) AS [Number of Days]
