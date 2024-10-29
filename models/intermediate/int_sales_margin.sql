SELECT
    *
    , ROUND ((quantity * purchase_price),2) AS purchase_cost
    , ROUND ((revenue- (quantity * purchase_price)),2) AS margin
FROM {{ref}"stg_gz_raw_data__product"}
JOIN {{ref}"stg_gz_raw_data__sales"}
    USING (products_id)