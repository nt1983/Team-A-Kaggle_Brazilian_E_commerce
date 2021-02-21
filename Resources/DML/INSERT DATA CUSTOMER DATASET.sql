COPY stg_olist_customer_dataset (
	customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state)
/*Update your location of the files here*/	
FROM 'C:\Users\broer\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_customers_dataset.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM stg_olist_customer_dataset