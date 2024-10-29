SELECT 
    date_date
    , COUNT (orders_id) AS nb_transactions
    , ROUND (SUM (tot_revenue)) AS revenue
    , ROUND (SAFE_DIVIDE(SUM (tot_revenue),COUNT (orders_id))) AS average_basket
    , ROUND(SUM (tot_margin)) AS margin
    , ROUND(SUM (operational_margin)) AS operational_margin
FROM {{ref ("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC