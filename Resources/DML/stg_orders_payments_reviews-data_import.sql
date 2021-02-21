COPY stg_olist_order_payments_dataset (
	order_id,
	payment_sequential,
	payment_type,
	payment_installments,
	payment_value)
	
	FROM 'C:\Git\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_order_payments_dataset.csv' DELIMITER ',' CSV HEADER;
	
COPY stg_olist_order_reviews_dataset (
	review_id,
	order_id,
	review_score,
	review_comment_title,
	review_comment_message,
	review_creation_date,
	review_answer_timestamp)
	
	FROM 'C:\Git\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_order_reviews_dataset.csv' DELIMITER ',' CSV HEADER;
	
COPY stg_olist_orders_dataset (
	order_id,
	customer_id,
	order_status,
	order_purchase_timestamp,
	order_approved_at,
	order_delivered_carrier_date,
	order_delivered_customer_date,
	order_estimated_delivery_date)
	
	FROM 'C:\Git\Team-A-Kaggle_Brazilian_E_commerce\Resources/olist_orders_dataset.csv' DELIMITER ',' CSV HEADER;