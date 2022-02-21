-- Set params
set session my.number_of_deals = '100';
set session my.number_of_traders = '100';
set session my.number_of_tickers = '100';
set session my.number_of_books = '100';
set session my.number_of_currencies = '100';
set session my.status_names = '3';
set session my.start_date = '2022-01-01 00:00:00';
set session my.end_date = '2022-02-01 00:00:00';

-- load the pgcrypto extension to gen_random_uuid ()
CREATE EXTENSION pgcrypto;

-- Filling of traders
INSERT INTO traders
select id
	, concat('trader ', id)
FROM GENERATE_SERIES(1, current_setting('my.number_of_traders')::int) as id;

-- Filling of tickers
INSERT INTO tickers
select id, concat('ticker ', id) 
FROM GENERATE_SERIES(1, current_setting('my.number_of_tickers')::int) as id;

-- Filling of countries
INSERT INTO books
select id, concat('book ', id) 
FROM GENERATE_SERIES(1, current_setting('my.number_of_books')::int) as id;

-- Filling of currencies
INSERT INTO currencies
select id, concat('currency ', id) 
FROM GENERATE_SERIES(1, current_setting('my.number_of_currencies')::int) as id;



-- Filling of dealstatus
INSERT INTO dealstatus(status_name_id,status_name) VALUES (1,'Draft');
INSERT INTO dealstatus(status_name_id,status_name) VALUES (2,'Pending');
INSERT INTO dealstatus(status_name_id,status_name) VALUES (3,'Closed');

-- Filling of deals  
INSERT INTO deals
select gen_random_uuid ()
	, round(CAST(float8 (random() * 10000) as numeric), 3)
	, TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS') +
		random()* (TO_TIMESTAMP(end_date, 'YYYY-MM-DD HH24:MI:SS') 
							- TO_TIMESTAMP(start_date, 'YYYY-MM-DD HH24:MI:SS'))
	, floor(random() * (current_setting('my.number_of_tickers')::int) + 1)::int
	, floor(random() * (current_setting('my.number_of_traders')::int) + 1)::int
	, floor(random() * (current_setting('my.number_of_books')::int) + 1)::int
	, floor(random() * (current_setting('my.number_of_currencies')::int) + 1)::int
	, floor(random() * (current_setting('my.status_names')::int) + 1)::int
FROM GENERATE_SERIES(1, current_setting('my.number_of_deals')::int) as id
	, current_setting('my.start_date') as start_date
	, current_setting('my.end_date') as end_date;

