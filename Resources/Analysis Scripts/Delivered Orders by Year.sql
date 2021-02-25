select 
delivered_dt.year_actual,
delivered_dt.quarter_name, sum(cast(price as bigint)) as "Price_sum" 

from public.orders o 
join public.order_items oi on o.order_id = oi.order_id
join date_dim delivered_dt on delivered_dt.date_dim_id = o.sk_order_delivered_customer_dt	

where o.order_status ='delivered'
group by delivered_dt.year_actual,delivered_dt.quarter_name

