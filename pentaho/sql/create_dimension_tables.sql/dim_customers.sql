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