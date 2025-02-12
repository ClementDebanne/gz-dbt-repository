 SELECT date_date,
        Round(SUM(ads_cost),2) as ads_cost,
        Round(SUM(impression),2) as ads_impression,
        Round(SUM(click),2) as ads_click,
 FROM {{ref('int_campaigns')}}
 Group by date_date
 order by date_date DESC