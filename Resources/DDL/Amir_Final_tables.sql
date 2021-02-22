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
	"CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60) COLLATE pg_catalog."default",
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
    "CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60) COLLATE pg_catalog."default",
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
    "CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60) COLLATE pg_catalog."default"
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
	"SK_first_contact_dt" integer,
    landing_page_id character varying(40) COLLATE pg_catalog."default",
    origin character varying(20) COLLATE pg_catalog."default",
    "CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60) COLLATE pg_catalog."default",
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
    "SK_won_date" integer,
    business_segment character varying(50) COLLATE pg_catalog."default",
    lead_type character varying(50) COLLATE pg_catalog."default",
    lead_behaviour_profile character varying(50) COLLATE pg_catalog."default",
    has_company boolean,
    has_gtin boolean,
    average_stock character varying(20) COLLATE pg_catalog."default",
    business_type character varying(20) COLLATE pg_catalog."default",
    declared_prod_cat_size integer,
    declared_monthly_revenue integer,
	"CREATE_DATE" date,
    "CREATED_BY " character varying(60)[] COLLATE pg_catalog."default",
    "CHANGED_DATE" date,
    "CHANGED_BY" character varying(60) COLLATE pg_catalog."default",
    CONSTRAINT mkt_closed_deals_pkey PRIMARY KEY (mql_id)
)

TABLESPACE pg_default;

ALTER TABLE public.mkt_closed_deals
    OWNER to postgres;	
	
	