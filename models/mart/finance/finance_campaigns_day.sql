select 
    a.date_date as date, 
    round(operational_margin - ads_cost,2) as ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost
from {{ ref("int_campaigns_day")}} as a
left join {{ ref("finance_days")}} as b 
using(date_date)
order by date_date DESC
