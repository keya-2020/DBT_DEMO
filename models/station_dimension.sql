WITH bike as (
    select
    distinct
    start_station_id,
    start_station_name,
    start_lat,
    start_lng
    
    from {{ ref('stg_bike') }}
    where RIDE_ID != 'ride_id'
    
)

select * from bike