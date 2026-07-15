--Data Analysis Annual Trips

SELECT * FROM `cyclistic.cleaned_annual_trips`;


--MEAN MAXIMUM MINIMUM


--Calculate the mean (Average) of anuual trips ride duration

SELECT 
  AVG(ride_length_min) AS mean_duration
FROM 
  `cyclistic.cleaned_annual_trips`;

--results 14.78



--Calculate the maximum ride duration

SELECT 
  MAX(ride_length_min) AS max_duration
FROM 
  `cyclistic.cleaned_annual_trips`;

--results 1373 min


--Calculate the minimum ride duration

SELECT 
  MIN(ride_length_min) AS min_duration
FROM 
  `cyclistic.cleaned_annual_trips`;

--result 1 min


--Calculate the mode of weekday

SELECT 
  day_of_week, 
  COUNT(*) AS frequency
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  day_of_week
ORDER BY 
  frequency DESC
LIMIT 1;

--results 7 
--frequency 863050


--Calculate the mode day name

SELECT 
  day_name AS mode_day, 
  COUNT(*) AS total_rides
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  day_name
ORDER BY 
  total_rides DESC
LIMIT 1;

--results Saturday
--frequency 863050


--MEMBER vs CASUAL

--Calculate the total number of casual and members

SELECT 
  member_casual, 
  COUNT(*) AS total_rides
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual;

--results

--member 3592883
--casual 2013305


--Calculate the total number of casual and member in Percentage %

SELECT 
  member_casual, 
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual;

--results

--member 3592883 in percent 64.09%
--casual 2013305 in percent 35.91%


--calculate the average ride duration of casual and member

SELECT 
  member_casual, 
  ROUND(AVG(ride_length_min), 2) AS average_ride_minutes,
  COUNT(*) AS total_trips
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual;

--results

--casual 19.77
--member 12.0


--Calculate the average ride duration for users by day of week

SELECT 
  member_casual, 
  day_of_week, 
  day_name, -- Include the name for better readability
  ROUND(AVG(ride_length_min), 2) AS average_ride_duration,
  COUNT(*) AS total_trips
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual, 
  day_of_week, 
  day_name
ORDER BY 
  member_casual, 
  day_of_week;

--results

--casual	1	Sunday	23.21	328813
--member	1	Sunday	13.37	401446
--casual	2	Monday	19.56	230186
--member	2	Monday	11.41	486016
--casual	3	Tuesday	17.73	241245
--member	3	Tuesday	11.55	566886
--casual	4	Wednesday	16.76	243945
--member	4	Wednesday	11.45	576417
--casual	5	Thursday	17.1	264745
--member	5	Thursday	11.55	578698
--casual	6	Friday	18.99	303971
--member	6	Friday	11.9	520770
--casual	7	Saturday	22.47	400400
--member	7	Saturday	13.29	462650


--Calculate the number of rides for users casual and member by day of week

SELECT 
  member_casual, 
  day_of_week, 
  day_name, 
  COUNT(ride_id) AS number_of_rides
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual, 
  day_of_week, 
  day_name
ORDER BY 
  member_casual, 
  day_of_week;

--results

--casual	1	Sunday	328813
--member	1	Sunday	401446
--casual	2	Monday	230186
--member	2	Monday	486016
--casual	3	Tuesday	241245
--member	3	Tuesday	566886
--casual	4	Wednesday	243945
--member	4	Wednesday	576417
--casual	5	Thursday	264745
--member	5	Thursday	578698
--casual	6	Friday	303971
--member	6	Friday	520770
--casual	7	Saturday  400400
--member	7	Saturday	462650


--RIDEABLE TYPES (electric bikes, classic bikes, docked bikes)

--Calculate the total number of rideable type

SELECT 
  rideable_type, 
  COUNT(*) AS total_rides
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  rideable_type;

--results

--classic bike 2660412
--electric bike 2870617
--docked bike 75159


--Calculate the total number of casual and member in Percentage %

SELECT 
  rideable_type, 
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS percentage_of_total
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  rideable_type
ORDER BY 
  total_rides DESC;

--results

--electric bike 51.20%
--classic bike 47.45%
--docked bike 1.34%


--Calculate the total number of rideable types based on casual and member

SELECT 
  member_casual,
  rideable_type, 
  COUNT(*) AS trip_count
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual, 
  rideable_type
ORDER BY 
  member_casual, 
  trip_count DESC;

--results

--Electric bike
----------------casual 1074843
----------------member 1795774

--Classic bike
----------------casual 863303
----------------member 1797109

--Docked bike
----------------casual 75159
----------------member 0

--Calculate the Percentage Shared by rideable type based on casual and member

SELECT 
  member_casual, 
  rideable_type, 
  COUNT(*) AS trip_count,
  -- Calculate percentage within each user group (member vs casual)
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(PARTITION BY member_casual), 2) AS percentage_share
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual, 
  rideable_type
ORDER BY 
  member_casual, 
  percentage_share DESC;

--results

--Electric bike
----------------casual 53.39%
----------------member 49.98%

--Classic bike
----------------casual 42.88%
----------------member 50.02%

--Docked bike
----------------casual 3.73%
----------------member 0


--HIGHEST RIDER MONTH

--casual and member

WITH monthly_totals AS (
  SELECT 
    member_casual,
    month_num,
    month_name,
    COUNT(*) AS total_rides
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    member_casual, month_num, month_name
),
ranked_months AS (
  SELECT 
    *,
    RANK() OVER(PARTITION BY member_casual ORDER BY total_rides DESC) as rnk
  FROM 
    monthly_totals
)
SELECT 
  member_casual,
  month_num,
  month_name,
  total_rides AS highest_ride_count
FROM 
  ranked_months
WHERE 
  rnk = 1;


--results

--member 452556---- August----highest month
--casual 323567---- July


--HIGHEST RIDEABLE TYPES

--electric bike, classic bike, docked bike

WITH bike_monthly_totals AS (
  SELECT 
    rideable_type,
    month_name,
    COUNT(*) AS total_rides
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    rideable_type, month_name
),
ranked_months AS (
  SELECT 
    *,
    RANK() OVER(PARTITION BY rideable_type ORDER BY total_rides DESC) as rnk
  FROM 
    bike_monthly_totals
)
SELECT 
  rideable_type,
  month_name AS peak_month,
  total_rides
FROM 
  ranked_months
WHERE 
  rnk = 1;


--results

--classic bike--- 391526--- August---highest month
--electric bike --381432--- June
--docked bike---- 17618---- July


--Hence highest riders from member with classic bike rideable in the month of AUGUST
