-- Table: public.products

DROP TABLE IF EXISTS public.products;

CREATE TABLE public.products
(
    product_id character varying(40) COLLATE pg_catalog."default" NOT NULL,
    product_category_name character varying(50) COLLATE pg_catalog."default",
    product_name_lenght integer,
    product_description_lenght integer,
    product_photos_qty integer,
    product_weight_g integer,
    product_length_cm integer,
    product_height_cm integer,
    product_width_cm integer,
	CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT products_pkey PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE public.products
    OWNER to postgres;
	
	
-- Table: public.sellers

DROP TABLE IF EXISTS public.sellers;

CREATE TABLE public.sellers
(
    seller_id character varying(40) COLLATE pg_catalog."default" NOT NULL,
    seller_zip_code_prefix character varying(12) COLLATE pg_catalog."default",
    seller_city character varying(30) COLLATE pg_catalog."default",
    seller_state character varying(2) COLLATE pg_catalog."default",
    CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT sellers_pkey PRIMARY KEY (seller_id)
)

TABLESPACE pg_default;

ALTER TABLE public.sellers
    OWNER to postgres;	
	
-- Table: public.product_category

DROP TABLE IF EXISTS public.product_category;

CREATE TABLE public.product_category
(
    product_category_name character varying(40) COLLATE pg_catalog."default",
    product_category_name_en character varying(50) COLLATE pg_catalog."default",
    CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.product_category
    OWNER to postgres;
	
-- Table: public.mkt_qualified_leads

DROP TABLE IF EXISTS public.mkt_qualified_leads;

CREATE TABLE public.mkt_qualified_leads
(
    mql_id character varying(40) COLLATE pg_catalog."default" NOT NULL,
    first_contact_date date,
	sk_first_contact_dt integer,
    landing_page_id character varying(40) COLLATE pg_catalog."default",
    origin character varying(20) COLLATE pg_catalog."default",
    CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT mkt_qualified_leads_pkey PRIMARY KEY (mql_id)
)

TABLESPACE pg_default;

ALTER TABLE public.mkt_qualified_leads
    OWNER to postgres;
	
-- Table: public.mkt_closed_deals

DROP TABLE IF EXISTS public.mkt_closed_deals;

CREATE TABLE public.mkt_closed_deals
(
    mql_id character varying(40) COLLATE pg_catalog."default" NOT NULL,
    seller_id character varying(40) COLLATE pg_catalog."default",
    sdr_id character varying(40) COLLATE pg_catalog."default",
    sr_id character varying(40) COLLATE pg_catalog."default",
    won_date date,
    sk_won_dt integer,
    business_segment character varying(50) COLLATE pg_catalog."default",
    lead_type character varying(50) COLLATE pg_catalog."default",
    lead_behaviour_profile character varying(50) COLLATE pg_catalog."default",
    has_company boolean,
    has_gtin boolean,
    average_stock character varying(20) COLLATE pg_catalog."default",
    business_type character varying(20) COLLATE pg_catalog."default",
    declared_prod_cat_size integer,
    declared_monthly_revenue integer,
	CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default", 
    CONSTRAINT mkt_closed_deals_pkey PRIMARY KEY (mql_id)
)

TABLESPACE pg_default;

ALTER TABLE public.mkt_closed_deals
    OWNER to postgres;	

-- Table: public.order_payments

DROP TABLE IF EXISTS public.order_payments;

CREATE TABLE public.order_payments
(
    order_id character varying(40) COLLATE pg_catalog."default",
    payment_sequential smallint,
    payment_type character varying(15) COLLATE pg_catalog."default",
    payment_installments integer,
    payment_value real,
    CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.order_payments
    OWNER to postgres;
--------------------------------------------------------------------

-- Table: public.order_reviews

DROP TABLE IF EXISTS public.order_reviews;

CREATE TABLE public.order_reviews
(
    review_id character varying(40) COLLATE pg_catalog."default",
    order_id character varying(40) COLLATE pg_catalog."default",
    review_score smallint,
    review_comment_title character varying(50) COLLATE pg_catalog."default",
    review_comment_message text COLLATE pg_catalog."default",
    review_creation_date date,
    sk_review_creation_dt integer,
    review_answer_timestamp date,
    sk_review_answer_dt integer,
    CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.order_reviews
    OWNER to postgres;
--------------------------------------------------------------------

-- Table: public.orders

DROP TABLE IF EXISTS public.orders;

CREATE TABLE public.orders
(
    order_id character varying(40) COLLATE pg_catalog."default",
    customer_id character varying(40) COLLATE pg_catalog."default",
    order_status character varying(15) COLLATE pg_catalog."default",
    order_purchase_timestamp date,
    sk_order_purchase_dt integer,
    order_approved_at date,
    sk_order_approved_at_dt integer,
    order_delivered_carrier_date date,
    sk_order_delivered_carrier_dt integer,
    order_delivered_customer_date date,
    sk_order_delivered_customer_dt integer,
    order_estimated_delivery_date date,
    sk_order_estimated_delivery_dt integer,
    CREATE_DATE date,
    CREATED_BY character varying(60) COLLATE pg_catalog."default",
    CHANGED_DATE date,
    CHANGED_BY character varying(60) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.orders
    OWNER to postgres;	
	
-- Table: public.customer

DROP TABLE IF EXISTS public.customer;

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

DROP TABLE IF EXISTS public.order_items;

CREATE TABLE public.order_items
(
    order_id character varying(50) COLLATE pg_catalog."default",
    order_item_id integer,
    product_id character varying(50) COLLATE pg_catalog."default",
    seller_id character varying(50) COLLATE pg_catalog."default",
    shipping_limit_date character varying(20) COLLATE pg_catalog."default",
	sk_shipping_limit_dt int,
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
	
-- Table: public.geolocation

DROP TABLE IF EXISTS public.geolocation;

CREATE TABLE public.geolocation
(
    geolocation_zip_code_prefix character varying(50) COLLATE pg_catalog."default",
    geolocation_lat double precision,
    geolocation_lng double precision,
    geolocation_city character varying(50) COLLATE pg_catalog."default",
    geolocation_state character varying(2) COLLATE pg_catalog."default",
    create_date date,
    created_by character varying(10) COLLATE pg_catalog."default",
    changed_date date,
    changed_by character varying(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.geolocation
    OWNER to postgres;	