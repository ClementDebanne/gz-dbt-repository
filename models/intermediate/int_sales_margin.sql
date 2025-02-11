with 
source as (
    select * from {{ ref("stg_raw__sales")}} as a
    inner join {{ ref("stg_raw__product")}} as b 
    on a.products_id = b.products_id
),
renamed as (
    select
        date_date, 
        orders_id,
        CAST((quantity * purchase_price) AS int64) AS purchase_cost,
        Round(revenue - (quantity * purchase_price),2) as margin  
    from source
)

select * from renamed
