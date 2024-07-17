/*
In this appraoch we will use window functions
P.S. make sure you have that row_id again
*/

-- Apply a row_number using window function
SELECT *, 
    row_number() OVER (PARTITION BY organisation_name) AS RN
FROM world_government;

-- Filter out the rows with more than one occurrence  
SELECT row_id
FROM (
        SELECT *, 
            row_number() OVER (PARTITION BY organisation_name) AS num 
        FROM world_government 
    ) AS gvs
WHERE gvs.num > 1;

-- Delete all rows wih row number greater than 1
DELETE FROM world_government
WHERE row_id IN(
    SELECT row_id
    FROM (
        SELECT *, 
            row_number() OVER (PARTITION BY organisation_name) AS num 
        FROM world_government 
    ) AS gvs
    WHERE gvs.num > 1
);

