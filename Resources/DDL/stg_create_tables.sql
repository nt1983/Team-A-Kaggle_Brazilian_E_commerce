<<<<<<< Updated upstream
-- Table: public.stg_olist_closed_deals_dataset
DROP TABLE If exists  public.stg_olist_closed_deals_dataset;
=======
-- 1 Table: public.stg_olist_closed_deals_dataset
DROP TABLE IF EXISTS public.stg_olist_closed_deals_dataset;
>>>>>>> Stashed changes

CREATE TABLE public.stg_olist_closed_deals_dataset
(
    mql_id text COLLATE pg_catalog."default",
    seller_id text COLLATE pg_catalog."default",
    sdr_id text COLLATE pg_catalog."default",
    sr_id text COLLATE pg_catalog."default",
    won_date text COLLATE pg_catalog."default",
    business_segment text COLLATE pg_catalog."default",
    lead_type text COLLATE pg_catalog."default",
    lead_behaviour_profile text COLLATE pg_catalog."default",
    has_company text COLLATE pg_catalog."default",
    has_gtin text COLLATE pg_catalog."default",
    average_stock text COLLATE pg_catalog."default",
    business_type text COLLATE pg_catalog."default",
    declared_product_catalog_size text COLLATE pg_catalog."default",
    declared_monthly_revenue text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_closed_deals_dataset
    OWNER to postgres;
	
<<<<<<< Updated upstream
	-- Table: public.stg_olist_marketing_qualified_leads_dataset

DROP TABLE If exists  public.stg_olist_marketing_qualified_leads_dataset;
=======
-- 2 Table: public.stg_olist_marketing_qualified_leads_dataset
>>>>>>> Stashed changes

DROP TABLE IF EXISTS public.stg_olist_marketing_qualified_leads_dataset;
CREATE TABLE public.stg_olist_marketing_qualified_leads_dataset
(
    mql_id text COLLATE pg_catalog."default",
    first_contact_date text COLLATE pg_catalog."default",
    landing_page_id text COLLATE pg_catalog."default",
    origin text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_marketing_qualified_leads_dataset
    OWNER to postgres;
	
-- 3 Table: public.stg_olist_products_dataset

<<<<<<< Updated upstream
DROP TABLE If exists  public.stg_olist_products_dataset;
=======
DROP TABLE IF EXISTS public.stg_olist_products_dataset;
>>>>>>> Stashed changes

CREATE TABLE public.stg_olist_products_dataset
(
    product_id text COLLATE pg_catalog."default",
    product_category_name text COLLATE pg_catalog."default",
    product_name_lenght integer,
    product_description_lenght integer,
    product_photos_qty integer,
    product_weight_g integer,
    product_length_cm integer,
    product_height_cm integer,
    product_width_cm integer
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_products_dataset
    OWNER to postgres;

<<<<<<< Updated upstream
-- Table: public.stg_olist_sellers_dataset

DROP TABLE If exists public.stg_olist_sellers_dataset;
=======
-- 4 Table: public.stg_olist_sellers_dataset
>>>>>>> Stashed changes

DROP TABLE IF EXISTS public.stg_olist_sellers_dataset;
CREATE TABLE public.stg_olist_sellers_dataset
(
    seller_id text COLLATE pg_catalog."default",
    seller_zip_code_prefix text COLLATE pg_catalog."default",
    seller_city text COLLATE pg_catalog."default",
    seller_state text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_sellers_dataset
    OWNER to postgres;

-- 5 Table: public.stg_product_category_name_translation

<<<<<<< Updated upstream
DROP TABLE If exists  public.stg_product_category_name_translation;
=======
DROP TABLE IF EXISTS public.stg_product_category_name_translation;
>>>>>>> Stashed changes

CREATE TABLE public.stg_product_category_name_translation
(
    product_category_name text COLLATE pg_catalog."default",
    product_category_name_english text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_product_category_name_translation
    OWNER to postgres;	
	
<<<<<<< Updated upstream
-- Table: public.stg_olist_sellers_dataset

DROP TABLE If exists  public.stg_olist_sellers_dataset;

CREATE TABLE public.stg_olist_sellers_dataset
(
    product_category_name text COLLATE pg_catalog."default",
    product_category_name_english text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.stg_olist_sellers_dataset
    OWNER to postgres;	
	
-- Table: public.stg_olist_orders_dataset

DROP TABLE If exists public.stg_olist_orders_dataset;
=======
-- 6 Table: public.stg_olist_orders_dataset

DROP TABLE IF EXISTS public.stg_olist_orders_dataset;
>>>>>>> Stashed changes

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
	
-- 7 Table: public.stg_olist_order_reviews_dataset

<<<<<<< Updated upstream
DROP TABLE If exists public.stg_olist_order_reviews_dataset;
=======
DROP TABLE IF EXISTS public.stg_olist_order_reviews_dataset;
>>>>>>> Stashed changes

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
	
-- 8 Table: public.stg_olist_order_payments_dataset

<<<<<<< Updated upstream
DROP TABLE If exists public.stg_olist_order_payments_dataset;
=======
DROP TABLE IF EXISTS public.stg_olist_order_payments_dataset;
>>>>>>> Stashed changes

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
	

DROP TABLE If exists public.stg_olist_order_payments_dataset;

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
	
-- Table: public.stg_olist_order_payments_dataset

DROP TABLE If exists public.stg_olist_order_payments_dataset;

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
	
-- Table: public.stg_olist_order_reviews_dataset

DROP TABLE If exists public.stg_olist_order_reviews_dataset;

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
	
-- Table: public.stg_olist_orders_dataset

DROP TABLE If exists public.stg_olist_orders_dataset;

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