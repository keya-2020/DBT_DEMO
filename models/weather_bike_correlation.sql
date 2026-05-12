WITH CTE AS(
    select
    t.*,
    w.*
    from {{ ref('trip_fact') }} t
    left join {{ ref('day_weather') }} w
    on t.TRIP_DATE = w.daily_weather


)

select * from CTE