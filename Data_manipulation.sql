-- Creating a new table from clean data with additional relevant columns.

CREATE TABLE Divvy_2023 AS
(
SELECT 
    ride_id,rideable_type, started_at, ended_at, 
     (EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
      EXTRACT(MINUTE FROM (ended_at - started_at)) +
      EXTRACT(SECOND FROM (ended_at - started_at)) / 60) AS ride_duration,
    CASE 
        WHEN EXTRACT(MONTH FROM started_at) = 1 THEN 'Jan'
        WHEN EXTRACT(MONTH FROM started_at) = 2 THEN 'Feb'
        WHEN EXTRACT(MONTH FROM started_at) = 3 THEN 'Mar'
        WHEN EXTRACT(MONTH FROM started_at) = 4 THEN 'Apr'
        WHEN EXTRACT(MONTH FROM started_at) = 5 THEN 'May'
        WHEN EXTRACT(MONTH FROM started_at) = 6 THEN 'Jun'
        WHEN EXTRACT(MONTH FROM started_at) = 7 THEN 'Jul'
        WHEN EXTRACT(MONTH FROM started_at) = 8 THEN 'Aug'
        WHEN EXTRACT(MONTH FROM started_at) = 9 THEN 'Sep'
        WHEN EXTRACT(MONTH FROM started_at) = 10 THEN 'Oct'
        WHEN EXTRACT(MONTH FROM started_at) = 11 THEN 'Nov'
        WHEN EXTRACT(MONTH FROM started_at) = 12 THEN 'Dec'
    END AS Month,
    CASE 
        WHEN EXTRACT(DOW FROM started_at) = 0 THEN 'Sun' 
        WHEN EXTRACT(DOW FROM started_at) = 1 THEN 'Mon'
        WHEN EXTRACT(DOW FROM started_at) = 2 THEN 'Tue'
        WHEN EXTRACT(DOW FROM started_at) = 3 THEN 'Wed'
        WHEN EXTRACT(DOW FROM started_at) = 4 THEN 'Thu'
        WHEN EXTRACT(DOW FROM started_at) = 5 THEN 'Fri'
        WHEN EXTRACT(DOW FROM started_at) = 6 THEN 'Sat'
    END AS Day, 
    member_casual,start_station_name,start_station_id,end_station_name,
    end_station_id,start_lat,start_lng,end_lat,end_lng
FROM cyclistic2023 c    
)
