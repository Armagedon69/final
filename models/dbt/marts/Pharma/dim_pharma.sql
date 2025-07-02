WITH PHARMA_DATA AS(
  SELECT *
  FROM {{ ref('stg_daily') }}
  ),

HOURLY AS(
  SELECT *
  FROM {{ ref('stg_hourly') }}
  ),

MONTHLY AS(
  SELECT *
  FROM {{ ref('stg_monthly') }}
  ),

WEEKLY AS(
  SELECT *
  FROM {{ ref('stg_weekly') }}
  )

SELECT *
FROM PHARMA_DATA