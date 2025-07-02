SELECT
    seller_id,
    seller_city,
    seller_state,
    LOADED_AT
  FROM {{ source('genet_source', 'sellers') }}