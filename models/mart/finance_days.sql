/*Date
Total number of transactions
Total revenue
Average Basket
Operational Margin
Total purchase cost
Total shipping fees
Total log costs
Total quantity of products sold.*/

SELECT 
date_date,
COUNT(DISTINCT orders_id) AS num_transaction,
ROUND(SUM(revenue),0) AS revenue,
ROUND(AVG(revenue),0) AS average_basket,
ROUND(SUM(operational_margin),0) AS operational_margin,
ROUND(SUM(purchase_cost),0) AS purchase_cost,
ROUND(SUM(shipping_fee),0) AS shipping_fee,
ROUND(SUM(logcost),0) AS logcost
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date