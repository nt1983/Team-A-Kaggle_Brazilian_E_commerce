/* Insert Data into tables */
-- 1. Insert data into stg_product_category_name_translation ---------------------------------

COPY stg_product_category_name_translation (
	product_category_name,
	product_category_name_english)
/*Update your location of the files here*/	
FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/product_category_name_translation.csv' DELIMITER ',' CSV HEADER;

-- 2. Insert data into stg_olist_sellers_dataset ---------------------------------
COPY stg_olist_sellers_dataset (
	seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
)
/*Update your location of the files here*/
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_sellers_dataset.csv' DELIMITER ',' CSV HEADER;

-- 3. Insert data into stg_olist_products_dataset ---------------------------------
COPY stg_olist_products_dataset (
    product_id ,
    product_category_name ,
    product_name_lenght,
    product_description_lenght,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
)
/*Update your location of the files here*/
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_products_dataset.csv' DELIMITER ',' CSV HEADER;

-- 4. Insert data into stg_olist_closed_deals_dataset ---------------------------------
COPY stg_olist_closed_deals_dataset
(
    mql_id,
    seller_id,
    sdr_id,
    sr_id,
    won_date,
    business_segment,
    lead_type,
    lead_behaviour_profile,
    has_company,
    has_gtin,
    average_stock,
    business_type,
    declared_product_catalog_size,
    declared_monthly_revenue
)
/*Update your location of the files here*/
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_closed_deals_dataset.csv' DELIMITER ',' CSV HEADER;

-- 5. Insert data into stg_olist_marketing_qualified_leads_dataset ---------------------------------
COPY stg_olist_marketing_qualified_leads_dataset (
    mql_id,
    first_contact_date,
    landing_page_id,
    origin
)
/*Update your location of the files here*/
FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_marketing_qualified_leads_dataset.csv' DELIMITER ',' CSV HEADER;


/* 6. Insert data from olist_customer_dataset.csv*/	
COPY stg_olist_customer_dataset (
	customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state)
/*Update your location of the files here*/	
FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_customers_dataset.csv' DELIMITER ',' CSV HEADER;

/*7. Insert data from olist_geolocation_dataset.csv*/	

COPY stg_olist_geolocation_dataset (
	geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
)
/*Update your location of the files here*/	
FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_geolocation_dataset.csv' DELIMITER ',' CSV HEADER;

/*8. Insert data from stg_olist_order_items_dataset.csv*/	

COPY stg_olist_order_items_dataset (
	order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value
)
/*Update your location of the files here*/	
FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_order_items_dataset.csv' DELIMITER ',' CSV HEADER;

/*9. Insert data from stg_olist_order_payments_dataset.csv*/	
COPY stg_olist_order_payments_dataset (
	order_id,
	payment_sequential,
	payment_type,
	payment_installments,
	payment_value)
	
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_order_payments_dataset.csv' DELIMITER ',' CSV HEADER;

/*10. Insert data from stg_olist_order_reviews_dataset.csv*/	
COPY stg_olist_order_reviews_dataset (
	review_id,
	order_id,
	review_score,
	review_comment_title,
	review_comment_message,
	review_creation_date,
	review_answer_timestamp)
	
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_order_reviews_dataset.csv' DELIMITER ',' CSV HEADER;

/*10. Insert data from stg_olist_orders_dataset.csv*/	
COPY stg_olist_orders_dataset (
	order_id,
	customer_id,
	order_status,
	order_purchase_timestamp,
	order_approved_at,
	order_delivered_carrier_date,
	order_delivered_customer_date,
	order_estimated_delivery_date)
	
FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_orders_dataset.csv' DELIMITER ',' CSV HEADER;
	
	