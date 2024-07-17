/*
This is a way to identify whether there are duplicates in the data. 
*/

-- First we find the total number of rows
SELECT COUNT(*) AS Total
FROM pirate_crew;

-- Then we find the total number of unique values in the desired column
SELECT COUNT(DISTINCT(crew_name)) 
FROM pirate_crew;

-- Finally, we subtract the number of unique values from the total number of values 
SELECT COUNT(*)- COUNT(DISTINCT(crew_name)) AS Duplicates
FROM pirate_crew;
