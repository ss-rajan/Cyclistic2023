-- Creating a table by combining all the months for year 2023

CREATE TABLE Cyclistic2023 AS 
( 
SELECT * FROM "Jan"  
UNION ALL 
SELECT * FROM "Feb"  
UNION ALL 
SELECT * FROM "Mar" 
UNION ALL 
SELECT * FROM "Apr"  
UNION ALL 
SELECT * FROM "May"   
UNION ALL 
SELECT * FROM "Jun"   
UNION ALL 
SELECT * FROM "Jul"  
UNION ALL 
SELECT * FROM "Aug"   
UNION ALL 
SELECT * FROM "Sep"  
UNION ALL 
SELECT * FROM "Oct"  
UNION ALL 
SELECT * FROM "Nov"   
UNION ALL 
SELECT * FROM "Dec" 
);

-- Checking for total number of rows
SELECT COUNT(*) AS totrows
FROM Cyclistic2023
