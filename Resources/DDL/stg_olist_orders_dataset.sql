-- Table: public.stg_olist_orders_dataset

-- DROP TABLE public.stg_olist_orders_dataset;

CREATE TABLE public.stg_olist_orders_dataset
(
    order_id text COLLATE pg_catalog."default",
    customer_id text COLLATE pg_catalog."default",
    order_status text COLLATE pg_catalog."default",
    order_purchase_timestamp date,
    order_approved_at date,
    order_delivered_carrier_date date,
    order_delivered_customer_date date,
    order_estimated_delivery_date date
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_orders_dataset
    OWNER to postgres;