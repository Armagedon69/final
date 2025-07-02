
{{
    config(
        materialized='table'
    )
}}

  SELECT 
    order_id,
    product_id,
    seller_id,
    price,
    freight_value,
    SHIPPING_LIMIT_DATE
  FROM {{ ref('stg_item') }}