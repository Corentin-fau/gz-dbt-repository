SELECT 
    *
    , ROUND ((tot_margin + shipping_fee - logcost - ship_cost),2) AS operational_margin
FROM {{ref ("int_orders_margin")}}
JOIN {{ref ("stg_gz_raw_data__ship")}}
    USING (orders_id)
ORDER BY orders_id DESC