-- Table: public.stg_olist_order_payments_dataset

-- DROP TABLE public.stg_olist_order_payments_dataset;

CREATE TABLE public.stg_olist_order_payments_dataset
(
    order_id text COLLATE pg_catalog."default",
    payment_sequential integer,
    payment_type text COLLATE pg_catalog."default",
    payment_installments integer,
    payment_value real
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_order_payments_dataset
    OWNER to postgres;