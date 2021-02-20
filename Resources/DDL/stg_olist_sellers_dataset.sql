-- Table: public.stg_olist_sellers_dataset

-- DROP TABLE public.stg_olist_sellers_dataset;

CREATE TABLE public.stg_olist_sellers_dataset
(
    product_category_name text COLLATE pg_catalog."default",
    product_category_name_english text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_sellers_dataset
    OWNER to postgres;