WITH TRIPS as (
    select
    RIDE_ID,
    RIDEABLE_TYPE,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS TRIP_DATE,
    START_STATION_ID,
    END_STATION_ID,
    MEMBER_CSUAL AS MEMBER_CASUAL,
    TIMESTAMPDIFF(SECOND, TO_TIMESTAMP(ENDED_AT),TO_TIMESTAMP(STARTED_AT)) AS TRIP_DURATION_SECONDS
    from {{ source('demo', 'bike') }}
    where RIDE_ID != 'ride_id'
    limit 10
    
)

select * from TRIPS