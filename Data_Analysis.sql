-- Bike types used per user type

SELECT 
	rideable_type, member_casual, COUNT(rideable_type) AS numrides
FROM 
	divvy_2023 d 
GROUP BY
	rideable_type, member_casual
ORDER BY rideable_type 

-- Finding Average ride duration 

SELECT 
	AVG(ride_duration) AS Mean
FROM
	divvy_2023 d 

-- Hourly distribution of the number of rides

SELECT 
	EXTRACT(HOUR FROM started_at) AS Timeframe, COUNT(ride_id) AS num_rides  
FROM
	divvy_2023 d
GROUP BY 
	TimeFrame
ORDER BY
	num_rides DESC
	
-- Average duration for per user type

SELECT 
	member_casual, ROUND(AVG(ride_duration),2) AS average_duration
FROM
	divvy_2023 d 
GROUP BY 
	member_casual 

-- Number of rides taken on each month

SELECT 
	"month", count(ride_id) AS num_rides
FROM
	divvy_2023 d
GROUP BY 
	"month" 
ORDER BY 
	num_rides DESC 
	
-- Average duration for per month

SELECT 
	"month" , ROUND(AVG(ride_duration),2) AS average_duration
FROM
	divvy_2023 d 
GROUP BY 
	"month"
ORDER BY 
	average_duration DESC 

-- Number of rides taken on each day of the week

SELECT 
	"day", count(ride_id) AS num_rides
FROM
	divvy_2023 d 
GROUP BY 
	"day" 
ORDER BY 
	num_rides DESC 


-- Average duration for per days of the week

	SELECT 
	"day" , ROUND(AVG(ride_duration),2) AS average_duration
FROM
	divvy_2023 d 
GROUP BY 
	"day" 
ORDER BY 
	average_duration DESC 


-- Locations where bikes were most picked up

SELECT 
	start_station_name, COUNT(ride_id) AS num_pickups
FROM 	
	divvy_2023 d 
GROUP BY 
	start_station_name	
ORDER BY
	num_pickups DESC 
LIMIT 10


-- Locations where bikes were most dropped off

SELECT 
	end_station_name, COUNT(ride_id) AS num_dropoffs
FROM 	
	divvy_2023 d 
GROUP BY 
	end_station_name	
ORDER BY
	num_dropoffs DESC 
LIMIT 10






