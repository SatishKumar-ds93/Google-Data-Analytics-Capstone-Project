--Data Cleaning

SELECT * FROM `cyclistic.annual_trips`;

--Create a new cleaned table
--filter rows whose value is 0 and neagtive value in ride length column format [00:00:00] and [-HH:MM:SS]

CREATE OR REPLACE TABLE `cyclistic.cleaned_annual_trips` AS
SELECT *
FROM `cyclistic.annual_trips`
WHERE ride_length > '00:00:00' 
  AND NOT STARTS_WITH(ride_length, '-');


--check and verify the table

SELECT MIN(ride_length) as shortest_ride 
FROM `cyclistic.cleaned_annual_trips`;

--results 00:01:00


--Total number of rows remaining after filter

SELECT COUNT(*) AS total_rows_after_filter
FROM `cyclistic.cleaned_annual_trips`;

--results 5606188

--Before Data Cleaning: toatl sum of all rows 5719787
--After Data Cleaning: total sum of all rows 5606188
--Remove rows: means total sum of all rows removed 113599


--Create a new column ride length min to convert ride length format [01:20:00] into 80 minute [24 hrs = 1440]

--add new column ride length min

ALTER TABLE `cyclistic.cleaned_annual_trips`
ADD COLUMN ride_length_min INT64;

--extract and convert into minute

CREATE OR REPLACE TABLE `cyclistic.cleaned_annual_trips` AS
SELECT 
  * EXCEPT(ride_length_min),
  -- Split 'HH:MM:SS' by ':' and calculate total minutes
  CAST(SPLIT(ride_length, ':')[OFFSET(0)] AS INT64) * 60 +        -- Hours to Minutes
  CAST(SPLIT(ride_length, ':')[OFFSET(1)] AS INT64) +             -- Add Minutes
  DIV(CAST(SPLIT(ride_length, ':')[OFFSET(2)] AS INT64), 60)      -- Add Full Seconds as Minutes (0 unless 60)
  AS ride_length_min
FROM `cyclistic.cleaned_annual_trips`;

--Check and verify the result

SELECT 
  ride_length, 
  ride_length_min 
FROM `cyclistic.cleaned_annual_trips` 
WHERE ride_length = '01:25:00' 
   OR ride_length = '24:00:00'
LIMIT 5;

--Round upto 2 decimal places

CREATE OR REPLACE TABLE `cyclistic.cleaned_annual_trips` AS
SELECT 
  * EXCEPT(start_lat, start_lng, end_lat, end_lng),
  ROUND(start_lat, 2) AS start_lat,
  ROUND(start_lng, 2) AS start_lng,
  ROUND(end_lat, 2) AS end_lat,
  ROUND(end_lng, 2) AS end_lng
FROM `cyclistic.cleaned_annual_trips`;

--check and verify the result

SELECT 
  start_lat, 
  start_lng, 
  end_lat, 
  end_lng 
FROM `cyclistic.cleaned_annual_trips` 
LIMIT 10;


