SELECT *
FROM {{ source('pharma', 'stg_monthly') }}