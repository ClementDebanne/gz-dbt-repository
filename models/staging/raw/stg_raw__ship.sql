with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        logcost,
        CAST(ship_cost as FLOAT64),
        shipping_fee - shipping_fee_1 as diff

    from source

)

select * from renamed