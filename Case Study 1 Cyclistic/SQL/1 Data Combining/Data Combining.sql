--Before Data Cleaning check the structure of all 12 csv tables
--Check the total number of rows

--By month January

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202301-tripdata`;

--total rows 190296


--By month February 

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202302-tripdata`;

--total rows 190443


--By month March

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202303-tripdata`;

--total rows 258671


--By month April

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202304-tripdata`;

--total rows 426582


--By month May

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202305-tripdata`;

--total rows 604818


--By month June

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202306-tripdata`;

--total rows 719600


--By month July

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202307-tripdata`;

--total rows 767646


--By month August

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202308-tripdata`;

--total rows 771688


--By month September

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202309-tripdata`;

--total rows 666363


--By month October

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202310-tripdata`;

--total rows 537108


--By month November

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202311-tripdata`;

--total rows 362512


--By month Decmeber

SELECT COUNT(*) AS total_rows
FROM `cyclistic.202312-tripdata`;

--total rows 224060



--Data Combining
--combining all the 12 months csv data tables into a single table


CREATE TABLE `cyclistic.annual_trips` AS
SELECT * FROM `cyclistic.202301-tripdata` UNION ALL
SELECT * FROM `cyclistic.202302-tripdata` UNION ALL
SELECT * FROM `cyclistic.202303-tripdata` UNION ALL
SELECT * FROM `cyclistic.202304-tripdata` UNION ALL
SELECT * FROM `cyclistic.202305-tripdata` UNION ALL
SELECT * FROM `cyclistic.202306-tripdata` UNION ALL
SELECT * FROM `cyclistic.202307-tripdata` UNION ALL
SELECT * FROM `cyclistic.202308-tripdata` UNION ALL
SELECT * FROM `cyclistic.202309-tripdata` UNION ALL
SELECT * FROM `cyclistic.202310-tripdata` UNION ALL
SELECT * FROM `cyclistic.202311-tripdata` UNION ALL
SELECT * FROM `cyclistic.202312-tripdata`;


--Annual Trips
--Total Sum of Rows 

SELECT COUNT(*) as total_combined_rows 
FROM `cyclistic.annual_trips`;

--toatl sum of all rows 5719787