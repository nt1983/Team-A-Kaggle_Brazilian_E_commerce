-- Table: public.customer

DROP TABLE public.customer;

CREATE TABLE customer AS 
TABLE stg_olist_customer_dataset;

ALTER TABLE customer
	ALTER COLUMN customer_id TYPE VARCHAR(50),
	ALTER COLUMN customer_unique_id TYPE VARCHAR(50),
	ALTER COLUMN customer_zip_code_prefix TYPE VARCHAR(11),
	ALTER COLUMN customer_city TYPE VARCHAR(50),
	ALTER COLUMN customer_state	TYPE VARCHAR(2),
	ADD COLUMN CREATE_DATE DATE,
	ADD COLUMN CREATED_BY VARCHAR(10),
	ADD COLUMN CHANGED_DATE DATE,
	ADD COLUMN CHANGED_BY VARCHAR(10);

ALTER TABLE public.customer
    OWNER to postgres;
	
-- SELECT * FROM customer

-- Table: public.geolocation

DROP TABLE public.geolocation;

CREATE TABLE geolocation AS 
TABLE stg_olist_geolocation_dataset;

ALTER TABLE geolocation
	ALTER COLUMN geolocation_zip_code_prefix TYPE VARCHAR(50),
	ALTER COLUMN geolocation_lat TYPE DOUBLE PRECISION,
	ALTER COLUMN geolocation_lng TYPE DOUBLE PRECISION,
	ALTER COLUMN geolocation_city TYPE VARCHAR(50),
	ALTER COLUMN geolocation_state TYPE VARCHAR(2),
	ADD COLUMN CREATE_DATE DATE,
	ADD COLUMN CREATED_BY varchar(10),
	ADD COLUMN CHANGED_DATE DATE,
	ADD COLUMN CHANGED_BY varchar(10);

ALTER TABLE public.geolocation
    OWNER to postgres;
	
--SELECT * FROM geolocation

-- Table: public.order_items

DROP TABLE public.order_items;

CREATE TABLE order_items AS 
TABLE stg_olist_order_items_dataset;

ALTER TABLE order_items
	ALTER COLUMN order_id TYPE VARCHAR(50),
	ALTER COLUMN order_item_id TYPE INTEGER,
	ALTER COLUMN product_id TYPE VARCHAR(50),
	ALTER COLUMN seller_id TYPE VARCHAR(50),
	ALTER COLUMN shipping_limit_date TYPE varchar(20),
	ALTER COLUMN price TYPE real,
	ALTER COLUMN freight_value TYPE real,
	ADD COLUMN CREATE_DATE Date,
	ADD COLUMN CREATED_BY varchar(10),
	ADD COLUMN CHANGED_DATE Date,
	ADD COLUMN CHANGED_BY varchar(10);

ALTER TABLE public.order_items
    OWNER to postgres;
	
-- SELECT * FROM order_items