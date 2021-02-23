truncate customer

INSERT INTO public.customer(
	customer_id, customer_unique_id, customer_zip_code_prefix, customer_city, customer_state)
	VALUES ('aaa', 'bbb', 'aabbcc', 'san diego', 'ca');
	
UPDATE public.customer
	SET customer_zip_code_prefix='91911'
	WHERE customer_id='aaa';	
	
select * from customer	