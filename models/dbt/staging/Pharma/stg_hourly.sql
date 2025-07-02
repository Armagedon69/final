SELECT *
FROM {{ source('pharma', 'stg_hourly') }}