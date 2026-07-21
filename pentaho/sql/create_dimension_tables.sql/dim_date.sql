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