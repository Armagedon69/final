 SELECT
    order_id,
    customer_id,
    order_status,
    DATE(order_estimated_delivery_date) AS estimated_date
  FROM {{ source('genet_source', 'orders') }}