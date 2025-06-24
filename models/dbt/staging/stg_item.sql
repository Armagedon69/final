SELECT 
    order_id,
    product_id,
    seller_id,
    price,
    freight_value
  FROM {{ source('genet_source', 'stg_item') }}