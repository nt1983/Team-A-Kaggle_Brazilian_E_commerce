select dt.year_actual,dt.quarter_name, sum(cast(price as bigint)) as "Price_sum" 

from public.orders o 
join public.order_items oi on o.order_id = oi.order_id
join date_dim dt on dt.date_dim_id = o.sk_order_delivered_customer_dt	
where o.order_status ='delivered'
group by dt.year_actual,dt.quarter_name

