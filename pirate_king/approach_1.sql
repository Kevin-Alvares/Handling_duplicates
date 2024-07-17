/*
In this approach we will use the GROUP BY method
You will need some sort of unique row_id(or some sort of unique identifier) for this method to work
*/

-- If you have an existing unique row_id(or unique identifier),you can use this method

-- First count the number of entries for each organisation_name
SELECT organization_name, COUNT(*) AS no_of_entries
FROM world_government
GROUP BY organization_name

-- Filter out the ones with multiple entries/ duplicates
SELECT organization_name, COUNT(*) AS no_of_entries
FROM world_government
GROUP BY organization_name
HAVING COUNT(*)>1;

-- Identify the rows you will be keeping
SELECT organization_name, MAX(row_id) as unique
FROM world_government
GROUP BY organization_name
HAVING COUNT(*)>1 OR COUNT(*)=1;

-- Drop the rows that do not have the above selected row-ids
DELETE from world_government
WHERE row_id NOT IN(    
    SELECT MAX(row_id) as unique
    FROM world_government
    GROUP BY organization_name
    HAVING COUNT(*)>1 OR COUNT(*)=1
);
