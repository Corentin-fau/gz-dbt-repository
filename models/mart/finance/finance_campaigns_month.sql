SELECT
  DATE_TRUNC (date_date, MONTH) AS datemonth
  , SUM (ads_clicks) AS ads_clicks
  , SUM (nb_transactions) AS nb_transactions
  , SUM (revenue) AS revenue
  , AVG (average_basket) AS average_basket
  , SUM (margin) AS margin
  , SUM (tot_purchase_cost) AS purchase_cost
  , SUM (tot_qty_sold) AS quantity
  , SUM (tot_ship_fees) AS shipping_fee
  , SUM (logcost) AS logcost
  , SUM (ship_cost) AS ship_cost
  , SUM (ads_margin) AS ads_margin
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth


