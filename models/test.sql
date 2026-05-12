WITH test as (
    select
*
from {{ source('demo', 'bike') }}
where RIDE_ID != 'bikeid'
limit 10)

select * from test