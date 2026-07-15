--Data Exploration

--extract Date and Time


SELECT * FROM `cyclistic.annual_trips`;

--add new column start date and start time

ALTER TABLE `cyclistic.annual_trips`
ADD COLUMN start_date DATE,
ADD COLUMN start_time TIME;


--extract date and time

CREATE OR REPLACE TABLE `cyclistic.annual_trips` AS
SELECT 
  * EXCEPT(start_date, start_time),
  DATE(started_at) AS start_date,
  TIME(started_at) AS start_time
FROM `cyclistic.annual_trips`;


--Data Transform

--transform datetime format into time format from ended_at column
--rename as end_time

CREATE OR REPLACE TABLE `cyclistic.annual_trips` AS
SELECT 
  * EXCEPT(ended_at),
  TIME(ended_at) AS end_time
FROM `cyclistic.annual_trips`;


--add new column month name and month number

ALTER TABLE `cyclistic.annual_trips`
ADD COLUMN month_num INT64,
ADD COLUMN month_name STRING;

--transform month number and month name based from the start_time column

CREATE OR REPLACE TABLE `cyclistic.annual_trips` AS
SELECT 
  * EXCEPT(month_name, month_num),
  FORMAT_DATE('%B', start_date) AS month_name,  -- e.g., %B as 'January' %b as Jan
  EXTRACT(MONTH FROM start_date) AS month_num   -- e.g., 1
FROM `cyclistic.annual_trips`;


--Calculate the ride_length

SELECT * FROM `cyclistic.annual_trips`;

--add new column ride_length

ALTER TABLE `cyclistic.annual_trips`
ADD COLUMN ride_length STRING;

--ride_length = end_time - start_time [HH:MM:SS]

CREATE OR REPLACE TABLE `cyclistic.annual_trips` AS
SELECT 
  * EXCEPT(ride_length),
  -- Calculate difference in seconds and format as HH:MM:SS
  FORMAT('%02d:%02d:%02d',
    DIV(TIME_DIFF(end_time, start_time, SECOND), 3600),             -- Hours
    MOD(DIV(TIME_DIFF(end_time, start_time, SECOND), 60), 60),      -- Minutes
    MOD(TIME_DIFF(end_time, start_time, SECOND), 60)                -- Seconds
  ) AS ride_length
FROM `cyclistic.annual_trips`;


--Calculate the day of week

--add new column day of week

ALTER TABLE `cyclistic.annual_trips`
ADD COLUMN day_of_week INT64;

--calculate the weekday from start date [1=Sunday, 7=Saturday]

CREATE OR REPLACE TABLE `cyclistic.annual_trips` AS
SELECT 
  * EXCEPT(day_of_week),
  EXTRACT(DAYOFWEEK FROM start_date) AS day_of_week
FROM `cyclistic.annual_trips`;


--Name of the day

--add new column day name

ALTER TABLE `cyclistic.annual_trips`
ADD COLUMN day_name STRING;

--create a column day name

CREATE OR REPLACE TABLE `cyclistic.annual_trips` AS
SELECT 
  * EXCEPT(day_name),
  CASE day_of_week
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'
  END AS day_name
FROM `cyclistic.annual_trips`;