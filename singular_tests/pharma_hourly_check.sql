WITH HOURLY_CHECK AS(
    SELECT *
    FROM {{ ref('stg_hourly') }}
)

select 
   HOUR 
from HOURLY_CHECK
where HOUR < 0 