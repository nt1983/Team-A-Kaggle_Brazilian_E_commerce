-- Table: public.stg_olist_order_reviews_dataset

-- DROP TABLE public.stg_olist_order_reviews_dataset;

CREATE TABLE public.stg_olist_order_reviews_dataset
(
    review_id text COLLATE pg_catalog."default",
    order_id text COLLATE pg_catalog."default",
    review_score integer,
    review_comment_title text COLLATE pg_catalog."default",
    review_comment_message text COLLATE pg_catalog."default",
    review_creation_date date,
    review_answer_timestamp date
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_order_reviews_dataset
    OWNER to postgres;