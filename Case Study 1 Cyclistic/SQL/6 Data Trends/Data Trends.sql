--Trendlines Trips Analysis

SELECT * FROM `cyclistic.cleaned_annual_trips`;



--Monthly Trendlines


WITH monthly_metrics AS (
  SELECT 
    month_num,
    month_name,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_min), 2) AS avg_ride_duration,
    COUNT(DISTINCT ride_id) AS unique_trips
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    month_num, month_name
)
SELECT 
  month_num,
  month_name,
  total_rides,
  -- Calculate MoM Growth in Ride Volume
  ROUND(SAFE_DIVIDE(total_rides - LAG(total_rides) OVER (ORDER BY month_num), 
        LAG(total_rides) OVER (ORDER BY month_num)) * 100, 2) AS rides_growth_pct,
  
  avg_ride_duration,
  -- Calculate MoM Growth in Ride Duration
  ROUND(SAFE_DIVIDE(avg_ride_duration - LAG(avg_ride_duration) OVER (ORDER BY month_num), 
        LAG(avg_ride_duration) OVER (ORDER BY month_num)) * 100, 2) AS duration_growth_pct
FROM 
  monthly_metrics
ORDER BY 
  month_num;

--1	 January	   186022	 null	  10.64	 null
--2	 February	   186194	  0.09	11.48	 7.89
--3	 March	     252297	 35.5	  11.27	-1.83
--4	 April	     415619	 64.73	14.23	26.26
--5	 May	       591659	 42.36	15.92	11.88
--6	 June	       704469	 19.07	16.15	1.44
--7	 July	       751726	  6.71	16.92	4.77
--8	 August	     756912	  0.69	16.19	-4.31
--9	 September	 654602	-13.52	15.62	-3.52
--10 October	   528777	-19.22	13.67	-12.48
--11 November	   357226	-32.44	12.02	-12.07
--12 December	   220685	-38.22	11.33	-5.74



--Peak months--member vs casual


WITH monthly_usage AS (
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
ranked_peaks AS (
  SELECT 
    *,
    RANK() OVER (PARTITION BY member_casual ORDER BY total_rides DESC) AS rnk
  FROM 
    monthly_usage
)
SELECT 
  member_casual,
  month_name AS peak_month,
  total_rides AS peak_ride_volume
FROM 
  ranked_peaks
WHERE 
  rnk = 1;

--results

--casual	July	  323567
--member	August	452556


--Peak days--member vs casual

WITH daily_usage AS (
  SELECT 
    member_casual,
    day_of_week,
    day_name,
    COUNT(*) AS total_rides
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    member_casual, day_of_week, day_name
),
ranked_days AS (
  SELECT 
    *,
    RANK() OVER (PARTITION BY member_casual ORDER BY total_rides DESC) AS rnk
  FROM 
    daily_usage
)
SELECT 
  member_casual,
  day_name AS peak_day,
  total_rides AS peak_volume
FROM 
  ranked_days
WHERE 
  rnk = 1;

--results

--casual  Saturday  Peak Volume 400400
--member  Thrusday  Peak Volume 578698



--Trending rides in a Days--member vs casual


SELECT 
  member_casual,
  day_name,
  COUNT(*) AS total_rides
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual, day_of_week, day_name
ORDER BY 
  member_casual, total_rides DESC;

--results

--casual	Saturday	400400
--casual	Sunday	  328813
--casual	Friday	  303971
--casual	Thursday	264745
--casual	Wednesday	243945
--casual	Tuesday	  241245
--casual	Monday	  230186

--member	Thursday	578698
--member	Wednesday	576417
--member	Tuesday	  566886
--member	Friday	  520770
--member	Monday	  486016
--member	Saturday	462650
--member	Sunday	  401446


--Peak users--member vs casual


WITH bike_usage AS (
  SELECT 
    member_casual,
    rideable_type,
    COUNT(*) AS total_trips
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    member_casual, rideable_type
),
ranked_bikes AS (
  SELECT 
    *,
    RANK() OVER (PARTITION BY member_casual ORDER BY total_trips DESC) AS rnk
  FROM 
    bike_usage
)
SELECT 
  member_casual,
  rideable_type AS top_bike_type,
  total_trips,
  ROUND(total_trips * 100 / SUM(total_trips) OVER(PARTITION BY member_casual), 2) AS percentage_share
FROM 
  ranked_bikes
WHERE 
  rnk = 1;

--results

--casual	electric_bike	1074843
--member	classic_bike	1797109



--Peak Bike Shares---Rideable Types


SELECT 
  member_casual,
  rideable_type,
  COUNT(*) AS trip_count, -- Added missing comma here
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 2) AS percentage
FROM 
  `cyclistic.cleaned_annual_trips`
GROUP BY 
  member_casual, rideable_type
ORDER BY 
  member_casual, trip_count DESC;


--results

--casual	electric_bike	1074843	53.39%
--casual	classic_bike	 863303	42.88%
--casual	docked_bike	   75159	 3.73%

--member	classic_bike	1797109	50.02%
--member	electric_bike	1795774	49.98%


--------TOP 5 Rides----------


--Top 5 ride duration among casual and member


WITH ranked_trips AS (
  SELECT 
    member_casual,
    rideable_type,
    ride_id,
    ride_length_min,    -- Total minutes
    ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY ride_length_min DESC) AS rnk
  FROM 
    `cyclistic.cleaned_annual_trips`
)
SELECT 
  member_casual,
  rideable_type,
  ride_id,
  ride_length_min
FROM 
  ranked_trips
WHERE 
  rnk <= 5
ORDER BY 
  member_casual, 
  ride_length_min DESC;

--results

--casual	classic_bike	1F722CF8BD329ECA	1373 min---highest ride duration
--casual	classic_bike	C6197508DBACBAF3	1349 min
--casual	docked_bike	  06DC41DA83593C74	1346 min
--casual	classic_bike	C58638D24F75D8AB	1255 min
--casual	classic_bike	75D6569531256132	1243 min

--member	classic_bike	04D490D6F579C6C3	1356 min
--member	classic_bike	F8A15CF182728206	1240 min
--member	classic_bike	8471D486A84766D1	1178 min
--member	classic_bike	1D33A1C61D302802	1139 min
--member	classic_bike	E84EBCA5CFB303F9	1131 min


--Top 5 Station 


WITH route_counts AS (
  SELECT 
    member_casual,
    rideable_type,
    start_lat, 
    start_lng, 
    end_lat, 
    end_lng,
    COUNT(*) AS trip_count
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    member_casual, rideable_type, start_lat, start_lng, end_lat, end_lng
),
ranked_routes AS (
  SELECT 
    *,
    ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY trip_count DESC) AS rnk
  FROM 
    route_counts
)
SELECT 
  member_casual,
  rideable_type,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  trip_count
FROM 
  ranked_routes
WHERE 
  rnk <= 5
ORDER BY 
  member_casual, 
  trip_count DESC;

--results

--casual  classic_bike	41.88	-87.62	41.88	-87.62	12002
--casual	classic_bike	41.89	-87.61	41.89	-87.61	8984
--casual	classic_bike	41.79	-87.6	  41.79	-87.6	  8436
--casual	classic_bike	41.88	-87.62	41.89	-87.61	6846
--casual	electric_bike	41.88	-87.62	41.88	-87.62	6784

--member	classic_bike	41.79	-87.6	  41.79	-87.6	  28729
--member	classic_bike	41.95	-87.65	41.95	-87.65	15840
--member	classic_bike	41.88	-87.64	41.88	-87.64	13331
--member	classic_bike	41.9	-87.63	41.9	-87.63	12367
--member	classic_bike	41.89	-87.64	41.89	-87.64	11592


--MAP VIEW

WITH route_counts AS (
  SELECT
    member_casual,
    rideable_type,
    start_lat, 
    start_lng, 
    end_lat, 
    end_lng,
    COUNT(*) AS trip_count,
    ST_GEOGPOINT(start_lng, start_lat) AS start_point,
    ST_GEOGPOINT(end_lng, end_lat) AS end_point
  FROM 
    `cyclistic.cleaned_annual_trips`
  GROUP BY 
    member_casual, rideable_type, start_lat, start_lng, end_lat, end_lng
),
ranked_routes AS (
  SELECT 
    *,
    ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY trip_count DESC) AS rnk
  FROM 
    route_counts
)
SELECT 
  member_casual,
  rideable_type,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  trip_count,
  start_point, -- MUST BE INCLUDED HERE
  end_point    -- MUST BE INCLUDED HERE
FROM 
  ranked_routes
WHERE 
  rnk <= 5
ORDER BY 
  member_casual, 
  trip_count DESC;

--results

--Go to visualization
