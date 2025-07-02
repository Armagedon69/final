----dbt is data tranformation tool so in the model you have to do something like this 
WITH transfromed AS (
  SELECT 
    order_id,
    product_id,
    seller_id,
    price,
    freight_value,
    SHIPPING_LIMIT_DATE,
    ROW_NUMBER () OVER (PARTITION BY order_id ORDER BY SHIPPING_LIMIT_DATE) AS rn 
  FROM {{ source('genet_source', 'order_item') }})

  select *
  from transfromed
  where rn = 1