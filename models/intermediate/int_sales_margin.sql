SELECT 
products_id,
orders_id,
date_date,
revenue,
quantity,
purchase_price,
ROUND((quantity*purchase_price),2) AS purchase_cost,
ROUND(revenue-(quantity*purchase_price),2) AS margin
FROM {{ ref('stg_raw__sales') }} AS s
LEFT JOIN {{ ref('stg_raw__product') }} AS p
USING (products_id)
ORDER BY orders_id DESC