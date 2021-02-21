-- Table: public.stg_olist_order_items_dataset

-- DROP TABLE public.stg_olist_order_items_dataset;

CREATE TABLE public.stg_olist_order_items_dataset
(
    order_id text COLLATE pg_catalog."default",
    order_item_id integer,
    product_id text COLLATE pg_catalog."default",
    seller_id text COLLATE pg_catalog."default",
    shipping_limit_date text COLLATE pg_catalog."default",
    price numeric,
    freight_value numeric
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_order_items_dataset
    OWNER to postgres;