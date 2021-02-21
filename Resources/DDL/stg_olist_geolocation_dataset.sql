-- Table: public.stg_olist_geolocation_dataset

-- DROP TABLE public.stg_olist_geolocation_dataset;

CREATE TABLE public.stg_olist_geolocation_dataset
(
    geolocation_zip_code_prefix text COLLATE pg_catalog."default",
    geolocation_lat double precision,
    geolocation_lng double precision,
    geolocation_city text COLLATE pg_catalog."default",
    geolocation_state text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_geolocation_dataset
    OWNER to postgres;