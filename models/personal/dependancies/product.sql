SELECT
    product_id,
    product_category_name
  FROM {{ source('genet_source', 'product') }}