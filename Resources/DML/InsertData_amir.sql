/* Insert Data into tables */
-- Insert data into stg_product_category_name_translation ---------------------------------
COPY stg_product_category_name_translation (
	product_category_name,
	product_category_name_english)
/*Update your location of the files here*/	
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/product_category_name_translation.csv' DELIMITER ',' CSV HEADER;

--select * from stg_product_category_name_translation

-- Insert data into stg_olist_sellers_dataset ---------------------------------
COPY stg_olist_sellers_dataset (
	seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
)
/*Update your location of the files here*/
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_sellers_dataset.csv' DELIMITER ',' CSV HEADER;
--select * from stg_olist_sellers_dataset

-- Insert data into stg_olist_products_dataset ---------------------------------
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
--select * from stg_olist_products_dataset

-- Insert data into stg_product_category_name_translation ---------------------------------
COPY stg_product_category_name_translation
(
    product_category_name,
    product_category_name_english 
)
/*Update your location of the files here*/
	FROM 'C:\Users\sonof\UCSDProjects\Team-A-Kaggle_Brazilian_E_commerce\Resources/product_category_name_translation.csv' DELIMITER ',' CSV HEADER;
--select * from stg_product_category_name_translation

-- Insert data into stg_product_category_name_translation ---------------------------------
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

select * from stg_olist_closed_deals_dataset
