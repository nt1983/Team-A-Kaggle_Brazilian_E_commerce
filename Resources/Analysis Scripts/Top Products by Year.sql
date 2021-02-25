select 
delivered_dt.year_actual,
delivered_dt.quarter_name, 
p.product_category_name,

sum(cast(price as bigint)) as "Price_sum",
count(o.order_id) as "Order_cnt"

from public.orders o 
join public.order_items oi on o.order_id = oi.order_id
join date_dim delivered_dt on delivered_dt.date_dim_id = o.sk_order_delivered_customer_dt	

join public.products p on p.product_id = oi.product_id

where o.order_status ='delivered'
group by delivered_dt.year_actual,
delivered_dt.quarter_name,
p.product_category_name

order by sum(cast(price as bigint)) desc

