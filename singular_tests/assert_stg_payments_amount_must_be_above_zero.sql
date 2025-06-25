with item as (
    select *
    from {{ ref('stg_item') }}
)

select 
  order_id,
  sum(price) as total_price
from item
group by order_id
having total_price < 0