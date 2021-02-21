-- Table: public.stg_olist_orders_dataset

-- DROP TABLE public.stg_olist_orders_dataset;

CREATE TABLE public.stg_olist_orders_dataset
(
    order_id text COLLATE pg_catalog."default",
    customer_id text COLLATE pg_catalog."default",
    order_status text COLLATE pg_catalog."default",
    order_purchase_timestamp text COLLATE pg_catalog."default",
    order_approved_at text COLLATE pg_catalog."default",
    order_delivered_carrier_date text COLLATE pg_catalog."default",
    order_delivered_customer_date text COLLATE pg_catalog."default",
    order_estimated_delivery_date date
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_orders_dataset
    OWNER to postgres;