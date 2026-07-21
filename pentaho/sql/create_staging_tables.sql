-- staging.calendar definition

-- Drop table

-- DROP TABLE staging.calendar;

CREATE TABLE staging.calendar (
	"date" varchar(50) NULL,
	"year" int4 NULL,
	"month" int4 NULL,
	"day" int4 NULL,
	week int4 NULL,
	day_of_week int4 NULL
);


-- staging.customers definition

-- Drop table

-- DROP TABLE staging.customers;

CREATE TABLE staging.customers (
	customer_id varchar(50) NULL,
	age int4 NULL,
	gender varchar(50) NULL,
	loyalty_member int4 NULL,
	join_date varchar(50) NULL
);


-- staging.products definition

-- Drop table

-- DROP TABLE staging.products;

CREATE TABLE staging.products (
	product_id varchar(50) NULL,
	product_name varchar(50) NULL,
	brand varchar(50) NULL,
	category varchar(50) NULL,
	cocoa_percent int4 NULL,
	weight_g int4 NULL
);


-- staging.sales definition

-- Drop table

-- DROP TABLE staging.sales;

CREATE TABLE staging.sales (
	order_id varchar(50) NULL,
	order_date varchar(50) NULL,
	product_id varchar(50) NULL,
	store_id varchar(50) NULL,
	customer_id varchar(50) NULL,
	quantity int4 NULL,
	unit_price float4 NULL,
	discount float4 NULL,
	revenue float4 NULL,
	"cost" float4 NULL,
	profit float4 NULL
);


-- staging.stores definition

-- Drop table

-- DROP TABLE staging.stores;

CREATE TABLE staging.stores (
	store_id varchar(50) NULL,
	store_name varchar(50) NULL,
	city varchar(50) NULL,
	country varchar(50) NULL,
	store_type varchar(50) NULL
);

-- log.log_tabel_masuk definition

-- Drop table

-- DROP TABLE log.log_tabel_masuk;

CREATE TABLE log.log_tabel_masuk (
	table_name varchar(100) NULL,
	input_date timestamp NULL
);


-- log.staging_log definition

-- Drop table

-- DROP TABLE log.staging_log;

CREATE TABLE log.staging_log (
	table_name varchar(100) NULL,
	source_records varchar(100) NULL,
	source_date timestamp NULL,
	target_records varchar(100) NULL,
	target_date timestamp NULL,
	etl_date_start timestamp NULL,
	logical varchar(100) NULL
);