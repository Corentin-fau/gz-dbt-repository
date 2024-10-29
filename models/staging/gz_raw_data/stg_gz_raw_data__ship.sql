with

    source as (select * from {{ source("gz_raw_data", "ship") }}),

    renamed as (

        select
            orders_id,
            shipping_fee,
            logcost,
            cast(ship_cost as int) as ship_cost

        from source

    )

select *
from renamed
