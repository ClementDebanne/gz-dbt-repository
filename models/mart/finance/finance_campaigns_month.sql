select 
    DATE_TRUNC(date, MONTH) as datemonth, 
    Round(SUM(ads_margin),2) as ads_margin,
    Round(SUM(average_basket),2) as average_basket,
    SUM(operational_margin) as operational_margin,
    SUM(ads_cost) as ads_cost,
    SUM(ads_impression) as ads_impression,
    SUM(ads_click) as ads_clicks,
    SUM(quantity) as quantity,
    SUM(revenue) as revenue,
    SUM(purchase_cost) as purchase_cost,
    SUM(margin) as margin,
    SUM(shipping_fee) as shipping_fee,
    SUM(logcost) as logcost,
    SUM(ship_cost) as ship_cost
from {{ ref("finance_campaigns_day")}}
GROUP BY datemonth
ORDER BY datemonth DESC