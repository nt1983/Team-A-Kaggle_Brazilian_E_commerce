-- Table: public.customer

-- DROP TABLE public.customer;

CREATE TABLE public.customer
(
    customer_id character varying(50) COLLATE pg_catalog."default",
    customer_unique_id character varying(50) COLLATE pg_catalog."default",
    customer_zip_code_prefix character varying(11) COLLATE pg_catalog."default",
    customer_city character varying(50) COLLATE pg_catalog."default",
    customer_state character varying(2) COLLATE pg_catalog."default",
    create_date date,
    created_by character varying(10) COLLATE pg_catalog."default",
    changed_date date,
    changed_by character varying(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.customer
    OWNER to postgres;
	
-- Table: public.order_items

-- DROP TABLE IF EXISTS public.order_items;

CREATE TABLE public.order_items
(
    order_id character varying(50) COLLATE pg_catalog."default",
    order_item_id integer,
    product_id character varying(50) COLLATE pg_catalog."default",
    seller_id character varying(50) COLLATE pg_catalog."default",
    shipping_limit_date character varying(20) COLLATE pg_catalog."default",
    price real,
    freight_value real,
    create_date date,
    created_by character varying(10) COLLATE pg_catalog."default",
    changed_date date,
    changed_by character varying(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.order_items
    OWNER to postgres;

-- Table: public.order_items

-- DROP TABLE IF EXISTS public.order_items;

CREATE TABLE public.order_items
(
    order_id character varying(50) COLLATE pg_catalog."default",
    order_item_id integer,
    product_id character varying(50) COLLATE pg_catalog."default",
    seller_id character varying(50) COLLATE pg_catalog."default",
    shipping_limit_date character varying(20) COLLATE pg_catalog."default",
    price real,
    freight_value real,
    create_date date,
    created_by character varying(10) COLLATE pg_catalog."default",
    changed_date date,
    changed_by character varying(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.order_items
    OWNER to postgres;