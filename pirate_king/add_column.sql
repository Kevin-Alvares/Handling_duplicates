/*
What happens when you don't have a unique row_id? You use this method 
*/

-- First off, add in a new row_id column
ALTER TABLE pirate_crew 
ADD COLUMN row_id INT GENERATED ALWAYS AS IDENTITY;

SELECT * FROM pirate_crew;

-- Approach 1 with group by
DELETE FROM pirate_crew
WHERE row_id NOT IN(
    SELECT MAX(row_id) as unique
    FROM pirate_crew
    GROUP BY crew_name
    HAVING COUNT(*)>1 OR COUNT(*)=1
);

-- Approach 2 with window function
DELETE FROM pirate_crew
WHERE row_id IN(
    SELECT row_id
    FROM (
        SELECT *, 
            row_number() OVER (PARTITION BY crew_name) AS num 
        FROM pirate_crew 
    ) AS gvs
    WHERE gvs.num > 1
);

-- Optional,you can drop the row_id if you want 
ALTER TABLE pirate_crew 
DROP COLUMN row_id;



