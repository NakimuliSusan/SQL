SELECT *
FROM  dataset_1
--This is getting all the data in dataset_1;

SELECT DISTINCT passanger, destination 
FROM dataset_1
--Disinct elimantes duplicates in the specific column from dataset_1;

SELECT *
--destination,
--passanger,
--time as 'The time' 
FROM dataset_1 
WHERE passanger  = 'Friend(s)'
ORDER BY time ASC  
-- Alias means renaming a table column name but its temporary
-- Aggregtion is grouping of data by a certain column;

SELECT destination , time,
AVG(temperature), AVG(age),COUNT(temperature) 
FROM dataset_1 d 
GROUP BY destination, time 
-- This means select everything destination removes duplcates then get the
--average temperature for each destination;

SELECT passanger ,COUNT(has_children), COUNT(DISTINCT age) 
FROM dataset_1 d 
GROUP BY passanger
--This gropus the data in dataset 1
-- by passenger categories then counts how many ahve children with them;

