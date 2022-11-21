-- 2022-11-18 (Fri)
SELECT 
	GETDATE()			       -- 2022-11-18 11:20:40.890
	, CONVERT(date, GETDATE()) -- 2022-11-18

-- 2022-11-21 (Mon)
SELECT value FROM STRING_SPLIT('Seoul Busan', ' ');