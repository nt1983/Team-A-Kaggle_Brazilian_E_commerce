-- Table: public.stg_olist_customer_dataset

-- DROP TABLE public.stg_olist_customer_dataset;

CREATE TABLE public.stg_olist_customer_dataset
(
    customer_id text COLLATE pg_catalog."default",
    customer_unique_id text COLLATE pg_catalog."default",
    customer_zip_code_prefix text COLLATE pg_catalog."default",
    customer_city text COLLATE pg_catalog."default",
    customer_state text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_customer_dataset
    OWNER to postgres;