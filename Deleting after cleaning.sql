-- Removing Null values from cyclistic2023

DELETE FROM cyclistic2023 c 
WHERE  ride_id = ''
OR rideable_type = ''
OR started_at IS NULL 
OR ended_at IS NULL 
OR start_station_name = ''
OR start_station_id = ''
OR end_station_name = ''
OR end_station_id = ''
OR start_lat IS NULL 
OR start_lng IS NULL 
OR end_lat IS NULL 
OR end_lng IS NULL
OR member_casual = ''
