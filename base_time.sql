SELECT 
    to_timestamp('2022-12-01 13:11', 'YYYY-MM-DD HH24:MI')::TIMESTAMP -- 2022-12-01 13:11:00.000
    , to_timestamp('2022-12-01 13:11', 'YYYY-MM-DD HH24:00')::TIMESTAMP -- 2022-12-01 13:00:00.000
;
