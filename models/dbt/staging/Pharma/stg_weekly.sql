SELECT *
FROM {{ source('pharma', 'stg_weekly') }}