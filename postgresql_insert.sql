-- 2022-12-11 (Sun)
-- table
CREATE TABLE public.base_logs (
	id int4 NOT NULL DEFAULT nextval('base_table_id_seq'::regclass),
	init_time timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	log_level varchar(10) NULL,
	log_message text NULL,
	CONSTRAINT base_table_pk PRIMARY KEY (id)
);

-- Insert
INSERT INTO public.base_logs (init_time, update_time, log_level, log_message)
VALUES ('2022-12-11 18:00:00', '2022-12-11 18:00:00', 'INFO', 'init log');

BEGIN;
INSERT INTO public.base_logs (init_time, update_time, log_level, log_message)
VALUES ('2022-12-11 18:00:00', '2022-12-11 18:00:00', 'INFO', 'init log');
COMMIT;
    
-- Insert 
COPY public.base_logs (init_time, update_time, log_level, log_message)
FROM '/path/logs.csv' DELIMITER ',' CSV;

INSERT INTO public.base_logs (init_time, update_time, log_level, log_message)
SELECT init_time, update_time, log_level, log_message
FROM base_table
WHERE log_level = 'ERROR';

INSERT INTO base_logs (id, init_time, update_time, log_level, log_message)
SELECT 
  nextval('base_table_id_seq'),
  CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP,
  'INFO',
  'This is a dummy log message'
FROM GENERATE_SERIES(1, 100, 1);


