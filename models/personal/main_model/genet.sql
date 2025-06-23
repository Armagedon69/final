
{{
    config(materialized='table')
}}

WITH ITEM AS (
  SELECT *
  FROM {{ 
           ref("item")
  }}
),

SELLER AS (
  SELECT *
  FROM 
     {{
        ref("seller")
     }}
),

ORDER_TABLE AS (
  SELECT *
  FROM 
     {{
        ref("oder")
     }}
),

PRODUCT AS (
  SELECT *
  FROM 
    {{
         ref("product")
    }}
),

TOTAL AS (
  SELECT
    i.order_id,
    i.product_id,
    i.seller_id,
    i.price,
    i.freight_value,
    s.seller_city,
    s.seller_state,
    o.customer_id,
    o.order_status,
    o.estimated_date,
    p.product_category_name
  FROM ITEM i
  JOIN SELLER s ON i.seller_id = s.seller_id
  JOIN ORDER_TABLE o ON i.order_id = o.order_id
  JOIN PRODUCT p ON p.product_id = i.product_id
)

SELECT *
FROM TOTAL
