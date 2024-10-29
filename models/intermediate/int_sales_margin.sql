SELECT
    *
    , ROUND ((quantity * purchase_price),2) AS purchase_cost
    , ROUND ((revenue- (quantity * purchase_price)),2) AS margin
FROM `pro-talon-437909-k1.dbt_cfau.stg_gz_raw_data__sales`
JOIN `pro-talon-437909-k1.dbt_cfau.stg_gz_raw_data__product`
    USING (products_id)