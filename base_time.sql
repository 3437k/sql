-- 2022-12-01 (Thu)
SELECT 
    to_timestamp('2022-12-01 13:11', 'YYYY-MM-DD HH24:MI')::TIMESTAMP -- 2022-12-01 13:11:00.000
    , to_timestamp('2022-12-01 13:11', 'YYYY-MM-DD HH24:00')::TIMESTAMP -- 2022-12-01 13:00:00.000
;

-- 2022-12-02 (Fri)
-- Last day
SELECT 
    DATE_TRUNC('MONTH', (NOW()+'1 MONTH'::INTERVAL)) - '1 DAY'::INTERVAL -- 2022-12-31 00:00:00.000 +0900
    , TO_CHAR(DATE_TRUNC('MONTH', (NOW()+'1 MONTH'::INTERVAL)) - '1 DAY'::INTERVAL, 'YYYYMMDD') -- 20221231
;

SELECT * FROM schedule_GA
WHERE 1=1 
-- 2022-12-01 ~ 2022-12-31 
AND target >= TO_CHAR(date_trunc('month', NOW()), 'YYYYMMDD')
AND target <= TO_CHAR(DATE_TRUNC('MONTH', (NOW()+'1 MONTH'::INTERVAL)) - '1 DAY'::INTERVAL, 'YYYYMMDD')
;

-- 2022-12-07 (Wed)
-- end_time - start_time
SELECT TO_CHAR(end_date, 'YYYYMMDD)'::TIMESTAMP - TO_CHAR(start_date, 'YYYYMMDD)'::TIMESTAMP FROM base_table;

-- 2022-12-11 (Sun)
SELECT CURRENT_TIMESTAMP
                                                          
