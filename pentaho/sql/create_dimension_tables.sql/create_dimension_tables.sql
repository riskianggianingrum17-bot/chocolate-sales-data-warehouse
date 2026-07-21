-- dim.dim_customer definition

-- Drop table

-- DROP TABLE dim.dim_customer;

CREATE TABLE dim.dim_customer (
	sk_customer serial4 NOT NULL,
	customer_id varchar(50) NULL,
	gender varchar(20) NULL,
	age int4 NULL,
	age_group varchar(20) NULL,
	loyalty_member int4 NULL,
	member_status varchar(20) NULL,
	"version" int4 DEFAULT 1 NULL,
	join_date timestamp NULL,
	date_to timestamp NULL,
	date_from date NULL,
	CONSTRAINT dim_customer_pkey PRIMARY KEY (sk_customer)
);

-- dim.dim_date definition

-- Drop table

-- DROP TABLE dim.dim_date;

CREATE TABLE dim.dim_date (
	sk_waktu int8 NOT NULL,
	"date" timestamp NULL,
	sk_tahun int8 NULL,
	"year" int4 NULL,
	sk_kuartal int8 NULL,
	kuartal_angka int8 NULL,
	kuartal text NULL,
	kuartal_tahun text NULL,
	sk_bulan int8 NULL,
	"month" int4 NULL,
	month_name text NULL,
	week int4 NULL,
	hari_dalam_tahun int8 NULL,
	hari_dalam_bulan int4 NULL,
	hari_dalam_minggu int8 NULL,
	day_name text NULL,
	is_weekend text NULL,
	CONSTRAINT pk_dim_date PRIMARY KEY (sk_waktu)
);

-- dim.dim_product definition

-- Drop table

-- DROP TABLE dim.dim_product;

CREATE TABLE dim.dim_product (
	sk_product serial4 NOT NULL,
	product_id varchar(50) NULL,
	product_name varchar(100) NULL,
	brand varchar(50) NULL,
	category text NULL,
	cocoa_percent float8 NULL,
	cocoa_level text NULL,
	weight_g int4 NULL,
	CONSTRAINT dim_product_pkey PRIMARY KEY (sk_product)
);
CREATE INDEX idx_dim_product_lookup ON dim.dim_product USING btree (product_id);

-- dim.dim_store definition

-- Drop table

-- DROP TABLE dim.dim_store;

CREATE TABLE dim.dim_store (
	sk_store serial4 NOT NULL,
	store_id varchar(20) NULL,
	store_name varchar(100) NULL,
	city varchar(100) NULL,
	country varchar(100) NULL,
	region varchar(100) NULL,
	store_type varchar(50) NULL,
	CONSTRAINT dim_store_pkey PRIMARY KEY (sk_store)
);