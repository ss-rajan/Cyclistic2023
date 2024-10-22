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

-- Now that there are  no more null values or empty string to find out duplicates or inconsistencies

SELECT COUNT(ride_id) - count(DISTINCT ride_id) AS dup_ride_id
FROM cyclistic2023 c 


-- Checking for inconsistent format in ride_id

SELECT LENGTH(ride_id) AS strlen, COUNT(*) AS count
FROM cyclistic2023
GROUP BY LENGTH(ride_id);

-- Checking for inconsistencies in column rideable_type

SELECT rideable_type, count(rideable_type) AS num_ride_type
FROM cyclistic2023
GROUP BY rideable_type 

SELECT * 
FROM cyclistic2023 c 
WHERE start_station_name IS NULL 


SELECT * 
FROM cyclistic2023 c 
WHERE end_station_name IS NULL 

SELECT *
FROM cyclistic2023 c 
WHERE start_station_id IS NULL
OR end_station_id IS NULL 


SELECT member_casual, COUNT(member_casual) AS mtype
FROM cyclistic2023 c 
GROUP BY member_casual 

SELECT * 
FROM cyclistic2023 c 
WHERE
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL

-- No null values for all the given columns when data was explored to find null values / discrepancies


DELETE FROM cyclistic2023 c
WHERE (ended_at - started_at) < INTERVAL '1 minute'
   OR (ended_at - started_at) > INTERVAL '1 day';
  
-- To Delete all the values where the duration of the data is less than 1 minute, or more than 1 day.