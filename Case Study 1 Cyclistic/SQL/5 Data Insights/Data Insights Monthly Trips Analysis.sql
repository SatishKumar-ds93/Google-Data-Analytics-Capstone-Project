--Monthly Trips Analysis

SELECT * FROM `cyclistic.cleaned_annual_trips`;

--January

SELECT 
  month_name,
  -- General Statistics
  COUNT(*) AS total_rides,
  COUNT(DISTINCT ride_id) AS distinct_riders, -- Distinct riders
  MAX(ride_length_min) AS max_ride_len,
  MIN(ride_length_min) AS min_ride_len,
  ROUND(AVG(ride_length_min), 2) AS avg_ride_len,

  -- User Type Analysis (Casual vs Member)
  -- This identifies which group had more rides and which had fewer in January
  (SELECT member_casual FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'January' GROUP BY member_casual ORDER BY COUNT(*) DESC LIMIT 1) AS highest_user_type,
  (SELECT day_name FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'January' GROUP BY day_name ORDER BY COUNT(*) DESC LIMIT 1) AS highest_day,

  -- Rideable Type Analysis
  -- This identifies the most and least popular bike types in January
  (SELECT rideable_type FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'January' GROUP BY rideable_type ORDER BY COUNT(*) DESC LIMIT 1) AS highest_bike_type,
  (SELECT rideable_type FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'January' GROUP BY rideable_type ORDER BY COUNT(*) ASC LIMIT 1) AS lowest_bike_type
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'January'
GROUP BY 
  month_name;

--results

--month January
--total rides     186022
--distinct riders 186018
--max ride length    860 min
--min ride length      1 min
--avg ride length  10.64 min
--highest user type   member
--highest day use     tuesday
--highest bike use    electric bike
--lowest bike use     docked bike


--Manual vs Casual

SELECT
  member_casual,
  COUNT(*) AS total_count,
  -- Calculate percentage using a window function
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS percentage_share,
  -- Calculate average ride duration
  ROUND(AVG(ride_length_min), 2) AS avg_duration_min
FROM
  `cyclistic.cleaned_annual_trips`
WHERE
  month_name = 'January'
GROUP BY
  member_casual;

--results

--member 146904  78.97%  avg duration 10.07 min
--casual  39118  21.03%  avg duration 12.81 min



--Ridable Types--bike types

SELECT 
  rideable_type, 
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS total_percentage_share
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'January'
GROUP BY 
  rideable_type;

--results

--electric bike 95063 51.10%
--classic bike  89277 47.99%
--docked bike    1682  0.9%



--Rideable Types--casual and member

SELECT 
  member_casual,
  rideable_type, 
  COUNT(*) AS trip_count,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(PARTITION BY member_casual), 2) AS percentage_share_within_group
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'January'
GROUP BY 
  member_casual, 
  rideable_type
ORDER BY 
  member_casual, 
  trip_count DESC;

--results

--casual	electric_bike	23693	 60.57 %
--casual	classic_bike	13743	 35.13 %
--casual	docked_bike	   1682	  4.3 %

--member	classic_bike	75534	 51.42 %
--member	electric_bike	71370	 48.58 %


--Weekdays

SELECT 
  member_casual, 
  day_of_week, 
  day_name, 
  COUNT(*) AS total_rides, 
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'January'
GROUP BY 
  member_casual, 
  day_of_week, 
  day_name
ORDER BY 
  member_casual, 
  day_of_week;

--results

--casual	1	Sunday	  6234	3.35
--casual	2	Monday	  5574	3.0
--casual	3	Tuesday	  6759	3.63
--casual	4	Wednesday	5856	3.15
--casual	5	Thursday	4905	2.64
--casual	6	Friday	  4877	2.62
--casual	7	Saturday	4913	2.64

--member	1	Sunday	  15619	8.4
--member	2	Monday	  22103	11.88
--member	3	Tuesday	  28758	15.46
--member	4	Wednesday	24364	13.1
--member	5	Thursday	21988	11.82
--member	6	Friday	  19625	10.55
--member	7	Saturday	14447	7.77




--February

SELECT 
  month_name,
  -- General Statistics
  COUNT(*) AS total_rides,
  COUNT(DISTINCT ride_id) AS distinct_riders, -- Distinct riders
  MAX(ride_length_min) AS max_ride_len,
  MIN(ride_length_min) AS min_ride_len,
  ROUND(AVG(ride_length_min), 2) AS avg_ride_len,

  -- User Type Analysis (Casual vs Member)
  -- This identifies which group had more rides and which had fewer in February
  (SELECT member_casual FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'February' GROUP BY member_casual ORDER BY COUNT(*) DESC LIMIT 1) AS highest_user_type,
  (SELECT day_name FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'February' GROUP BY day_name ORDER BY COUNT(*) DESC LIMIT 1) AS highest_day,

  -- Rideable Type Analysis
  -- This identifies the most and least popular bike types in February
  (SELECT rideable_type FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'February' GROUP BY rideable_type ORDER BY COUNT(*) DESC LIMIT 1) AS highest_bike_type,
  (SELECT rideable_type FROM `cyclistic.cleaned_annual_trips` WHERE month_name = 'February' GROUP BY rideable_type ORDER BY COUNT(*) ASC LIMIT 1) AS lowest_bike_type
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'February'
GROUP BY 
  month_name;


--results

--month February
--total rides     186194
--distinct riders 186192
--max ride length   1139 min
--min ride length      1 min
--avg ride length  11.48 min
--highest user type   member
--highest day use     tuesday
--highest bike use    electric bike
--lowest bike use     docked bike


--Manual vs Casual

SELECT
  member_casual,
  COUNT(*) AS total_count,
  -- Calculate percentage using a window function
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS percentage_share,
  -- Calculate average ride duration
  ROUND(AVG(ride_length_min), 2) AS avg_duration_min
FROM
  `cyclistic.cleaned_annual_trips`
WHERE
  month_name = 'February'
GROUP BY
  member_casual;

--results

--member 144126  77.41%  avg duration 10.43 min
--casual  42068  22.59%  avg duration 15.06 min


--Ridable Types--bike types

SELECT 
  rideable_type, 
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS total_percentage_share
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'February'
GROUP BY 
  rideable_type;

--results

--electric bike 95166 51.11%
--classic bike  88893 47.74%
--docked bike    2135  1.15%


--Rideable Types--casual and member

SELECT 
  member_casual,
  rideable_type, 
  COUNT(*) AS trip_count,
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(PARTITION BY member_casual), 2) AS percentage_share_within_group
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'February'
GROUP BY 
  member_casual, 
  rideable_type
ORDER BY 
  member_casual, 
  trip_count DESC;

--results

--casual	electric_bike	24576	58.42%
--casual	classic_bike	15357	36.51%
--casual	docked_bike	   2135	5.08%

--member	classic_bike	73536	51.02%
--member	electric_bike	70590	48.98%


--Weekdays

SELECT 
  member_casual, 
  day_of_week, 
  day_name, 
  COUNT(*) AS total_rides, 
  ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM 
  `cyclistic.cleaned_annual_trips`
WHERE 
  month_name = 'February'
GROUP BY 
  member_casual, 
  day_of_week, 
  day_name
ORDER BY 
  member_casual, 
  day_of_week;

--results

--casual	1	Sunday	  9794	5.26
--casual	2	Monday	  6672	3.58
--casual	3	Tuesday	  6679	3.59
--casual	4	Wednesday	4487	2.41
--casual	5	Thursday	3614	1.94
--casual	6	Friday	  4117	2.21
--casual	7	Saturday	6705	3.6

--member	1	Sunday	 19939	10.71
--member	2	Monday	 23917	12.85
--member	3	Tuesday	 28079	15.08
--member	4	Wednesday	20737	11.14
--member	5	Thursday	17732	9.52
--member	6	Friday	  16759	9.0
--member	7	Saturday	16963	9.11