select 
    a.orders_id,
    a.date_date,
    a.margin,
    ROUND(a.margin + b.shipping_fee - b.logcost - b.ship_cost,2) as operational_margin,
    a.quantity,
    a.revenue
from {{ ref("int_sales_margin")}} as a
inner join {{ ref("stg_raw__ship")}} as b 
on a.orders_id = b.orders_id
order by orders_id DESC