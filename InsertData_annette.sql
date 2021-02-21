/*Insert data from olist_customer_dataset.csv*/	

COPY stg_olist_customer_dataset (
	customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state)
/*Update your location of the files here*/	
FROM 'C:\Users\broer\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_customers_dataset.csv' DELIMITER ',' CSV HEADER;

/*Insert data from olist_geolocation_dataset.csv*/	

COPY stg_olist_customer_dataset (
	geolocation_zip_code_prefix,
    geolocation_lat,
    geolocation_lng,
    geolocation_city,
    geolocation_state
)
/*Update your location of the files here*/	
FROM 'C:\Users\broer\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_geolocation_dataset.csv' DELIMITER ',' CSV HEADER;

/*Insert data from olist_geolocation_dataset.csv*/	

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
FROM 'C:\Users\broer\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_order_items_dataset.csv' DELIMITER ',' CSV HEADER;