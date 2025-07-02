SELECT *
FROM {{ source('pharma', 'stg_daily') }}