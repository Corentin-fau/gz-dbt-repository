SELECT 
    date_date
    , COUNT (orders_id) AS nb_transactions
    , ROUND (SUM (tot_revenue)) AS revenue
    , ROUND (SAFE_DIVIDE(SUM (tot_revenue),COUNT (orders_id))) AS average_basket
    , ROUND(SUM (tot_margin)) AS margin
    , ROUND(SUM (operational_margin)) AS operational_margin
    , ROUND (SUM (tot_purchase_cost),2) AS tot_purchase_cost
    , ROUND (SUM(tot_quantity), 2) AS tot_qty_sold
    , ROUND (SUM (shipping_fee),2) AS tot_ship_fees
    , SUM (logcost) AS logcost
    , SUM (ship_cost) AS ship_cost
FROM {{ref ("int_orders_operational")}}
GROUP BY date_date
ORDER BY date_date DESC