-- datamart.fact_orders definition

-- Drop table

-- DROP TABLE datamart.fact_orders;

CREATE TABLE datamart.fact_orders (
	transaction_id int8 NOT NULL,
	order_id varchar(20) NULL,
	sk_customer int8 NULL,
	sk_store int8 NULL,
	sk_product int8 NULL,
	sk_waktu int8 NULL,
	quantity int4 NULL,
	unit_price numeric(12, 2) NULL,
	discount numeric(5, 2) NULL,
	revenue numeric(12, 2) NULL,
	"cost" numeric(12, 2) NULL,
	profit numeric(12, 2) NULL,
	is_valid_product varchar(20) NULL,
	CONSTRAINT fact_orders_pkey PRIMARY KEY (transaction_id)
);