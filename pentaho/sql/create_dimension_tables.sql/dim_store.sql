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