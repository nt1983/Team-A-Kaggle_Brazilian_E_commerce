-- Table: public.order_payments

-- DROP TABLE public.order_payments;

CREATE TABLE public.order_payments
(
    "Order_id" character varying(40)[] COLLATE pg_catalog."default",
    payment_sequential smallint,
    payment_type character varying(15)[] COLLATE pg_catalog."default",
    payment_installments integer,
    payment_value real,
    "CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.order_payments
    OWNER to postgres;
--------------------------------------------------------------------

-- Table: public.order_reviews

-- DROP TABLE public.order_reviews;

CREATE TABLE public.order_reviews
(
    review_id character varying(40)[] COLLATE pg_catalog."default",
    order_id character varying(40)[] COLLATE pg_catalog."default",
    review_score smallint,
    review_comment_title character varying(50)[] COLLATE pg_catalog."default",
    review_comment_message text COLLATE pg_catalog."default",
    review_creation_date date,
    "SK_review_creation_date" integer,
    review_answer_timestamp date,
    "SK_review_answer_timestamp" integer,
    "CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60)[] COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.order_reviews
    OWNER to postgres;
--------------------------------------------------------------------

-- Table: public.orders

-- DROP TABLE public.orders;

CREATE TABLE public.orders
(
    order_id character varying(40)[] COLLATE pg_catalog."default",
    customer_id character varying(40)[] COLLATE pg_catalog."default",
    order_status character varying(15)[] COLLATE pg_catalog."default",
    order_purchase_timestamp date,
    "SK_order_purchase_timestamp" integer,
    order_approved_at date,
    "SK_order_approved_at" integer,
    order_delivered_carrier_date date,
    "SK_order_delivered_carrier_date" integer,
    order_delivered_customer_date date,
    "SK_order_delivered_customer_date" integer,
    order_estimated_delivery_date date,
    "SK_order_estimated_delivery_date" integer,
    "CREATE_DATE" date,
    "CREATED_BY" character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60)[] COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.orders
    OWNER to postgres;