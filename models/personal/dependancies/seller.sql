SELECT
    seller_id,
    seller_city,
    seller_state
  FROM {{ source('genet_source', 'seller') }}