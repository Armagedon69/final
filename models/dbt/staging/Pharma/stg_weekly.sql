{{
    config(
        materialized='view'
    )
}}

SELECT *
FROM {{ source('pharma', 'stg_weekly') }}