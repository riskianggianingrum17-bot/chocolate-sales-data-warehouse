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