# CALORIES vs ACTIVITY, STEPS

--1. Calories Burnt vs Daily Intensities

--SUM

SELECT 
  sum(Calories) AS calories_burnt,
  sum(VeryActiveMinutes/60) AS very_active_min, 
  sum(FairlyActiveMinutes/60) AS fairly_active_min,
  sum(LightlyActiveMinutes/60) AS lightly_active_min,
  sum(SedentaryMinutes/60) AS sednetary_min,
FROM `bellabeat.daily_activity`
ORDER BY calories_burnt DESC;

--Results

calories_burnt	 very_active_min	fairly_active_min	   lightly_active_min	  sednetary_min
2165393	        331.58333333333348	212.51666666666648	3020.7333333333327	15528.966666666664


--2. Steps vs Calories burnt (easy version, from one dataset)

SELECT
  Id,
  ActivityDate,
  TotalSteps,
  Calories
FROM `bellabeat.daily_activity`;


--Results

Id	          ActivityDate	StepTotal	   Calories
1624580081     2016-05-01	   36019	       2690
1644430081     2016-04-14	   11037	       3226
1644430081     2016-04-19	   11256	       3300



--JOIN TABLE


--A. CALORIES


--1. Steps vs Calories burnt daily (JOIN TWO DATA SETS)

SELECT 
  steps.Id,
  steps.ActivityDate,
  steps.StepTotal,
  calories_burnt.Calories
FROM `bellabeat.daily_steps` AS steps
JOIN `bellabeat.daily_calories` AS calories_burnt
ON steps.Id = calories_burnt.Id AND steps.ActivityDate = calories_burnt.ActivityDate
GROUP BY
  steps.Id,
  steps.ActivityDate,
  steps.StepTotal,
  calories_burnt.Calories;

--Results

Id	          ActivityDate	StepTotal	   Calories
1503960366     2016-04-12	   13162	       1985
1503960366     2016-04-13	   10735	       1797
1503960366     2016-04-14	   10460	       1776



--2. Steps vs Calories burnt hourly

SELECT 
  steps.Id,
  steps.ActivityDate,
  SUM(steps.TotalSteps) AS total_steps,
  SUM(calories_burnt.Calories) AS total_calories_burnt
FROM `bellabeat.hourly_steps` AS steps
JOIN `bellabeat.hourly_calories` AS calories_burnt
ON steps.Id = calories_burnt.Id and steps.ActivityDate = calories_burnt.ActivityDate
GROUP BY 
  steps.Id,
  steps.ActivityDate;


--Results

Id	          ActivityDate	total_steps   total_calories_burnt
1503960366     2016-04-12	   315792	       47712
1503960366     2016-04-13	   257640	       43152
1503960366     2016-04-14    251040        42624



--3. Intensity vs Calories

SELECT  
  activity.Id,
  activity.ActivityDate,
  SedentaryMinutes, 
  LightlyActiveMinutes, 
  FairlyActiveMinutes, 
  VeryActiveMinutes,
  Calories
FROM `bellabeat.daily_intensities` AS activity
JOIN `bellabeat.daily_calories` AS calories_burnt
  ON activity.Id = calories_burnt.Id AND activity.ActivityDate = calories_burnt.ActivityDate
GROUP BY
  activity.Id,
  activity.ActivityDate,
  SedentaryMinutes, 
  LightlyActiveMinutes, 
  FairlyActiveMinutes, 
  VeryActiveMinutes,
  Calories;


--Results

Id	       ActivityDate	 SedentaryMinutes  LightlyActiveMinutes  FairlyActiveMinutes VeryActiveMinutes  Calories	  
1644430081  2016-04-14	    1125	            252                   58                   5                 3226


--B. SLEEP


--1. Activity, Steps and Calories vs sleep

SELECT 
  activity.Id, 
  AVG(TotalMinutesAsleep) AS avg_min_asleep, 
  AVG(TotalTimeInBed) AS avg_time_in_bed, 
  AVG(StepTotal) AS avg_step_total,
  AVG(SedentaryMinutes) AS sedentary_active,
  AVG(LightlyActiveMinutes) AS light_activity,
  AVG(FairlyActiveMinutes) AS fairly_active,
  AVG(VeryActiveMinutes) AS vey_active,
FROM `bellabeat.sleep_day` AS sleep
JOIN `bellabeat.daily_steps` AS activity
on activity.Id = sleep.Id 
JOIN `bellabeat.daily_intensities` AS intensity
ON activity.Id = intensity.Id
GROUP BY activity.Id;

--Results

Id	        avg_min_asleep   avg_time_in_bed	avg_step_total	sedentary_active light_activity	 fairly_active	very_active
  
1644430081     360.2799	        383.2000        12116.74            848.16       219.93         19.16         38.70




--C. ASLEEP


--1. time to fall asleep (all)

SELECT 
  Id,
  SleepDay, 
  TotalMinutesAsleep AS min_alseep, 
  TotalTimeInBed AS min_in_bed,
  TotalTimeInBed - TotalMinutesAsleep as time_to_fall_alseep
FROM `bellabeat.sleep_day` 
GROUP BY
  SleepDay,
  Id,
  TotalMinutesAsleep,
  TotalTimeInBed;


--Results

Id	          SleepDay   min_alseep	   min_in_bed	    time_to_fall_alseep
1503960366     00:00:00      327	      346           19
1503960366     12:00:00	     384        407           23
1503960366     12:00:00      412        442           30


--2. time to fall asleep by day of week

SELECT 
  Id,
  FORMAT_DATE('%A', DATE(ActivityDate)) AS day_of_week,
  TotalMinutesAsleep AS min_alseep, 
  TotalTimeInBed AS min_in_bed,
  TotalTimeInBed - TotalMinutesAsleep AS time_to_fall_alseep
FROM `bellabeat.sleep_day` 
GROUP BY 
  day_of_week,
  Id,
  TotalMinutesAsleep,
  TotalTimeInBed;


--Results

Id	          day_of_week   min_alseep	   min_in_bed	    time_to_fall_alseep
1503960366     Tuesday         327	      346           19
1503960366     Wednesday	     384        407           23
1503960366     Friday          412        442           30




--3. Sum time to fall asleep (sum of users)

SELECT 
  Id,
  SUM(TotalMinutesAsleep) AS min_alseep, 
  SUM(TotalTimeInBed) AS min_in_bed,
  SUM(TotalTimeInBed) - SUM(TotalMinutesAsleep) AS time_to_fall_alseep
FROM `bellabeat.sleep_day` 
group by 
  Id;



--Results

Id	             min_alseep	   min_in_bed	    time_to_fall_alseep
1503960366         9007	         9580              573
1644430081 	       1176          1384              208
1844505072         1956          2883              927



--D. AVERGAE SLEEP

--AVERAGE

--1. Average sleep, time in bed and minute to fall alseep (NOT ROUNDED)

SELECT 
  Id, 
  AVG(TotalMinutesAsleep) AS avg_min_alseep, 
  AVG(TotalTimeInBed) AS avg_min_in_bed,
  AVG(TotalTimeInBed) - AVG(TotalMinutesAsleep) AS avg_time_to_fall_alseep
FROM `bellabeat.sleep_day` 
GROUP BY Id;


--Results

Id	            avg_min_alseep	   avg_min_in_bed	    avg_time_to_fall_alseep
1503960366         360.2799	         383.20000               22.920000
1644430081 	       294.0             346.0                   52.0
1844505072         652.0             961.0                   309.0

--2. Average sleep, time in bed and minute to fall alseep (ROUNDED) per user

WITH sleep_avg as (
  SELECT 
  Id, 
  AVG(TotalMinutesAsleep) as avg_min_alseep, 
  AVG(TotalTimeInBed) as avg_min_in_bed,
  AVG(TotalTimeInBed) - AVG(TotalMinutesAsleep) as avg_time_to_fall_alseep
FROM `bellabeat.sleep_day` 
GROUP BY Id
)
SELECT 
  Id, 
  ROUND(sleep_avg.avg_min_alseep, 2) AS avg_min_alseep,
  ROUND(avg_min_in_bed, 2) AS avg_min_in_bed,
  ROUND(avg_time_to_fall_alseep, 2) AS avg_time_to_fall_alseep
FROM sleep_avg
GROUP BY 
  Id,
  sleep_avg.avg_min_alseep,
  sleep_avg.avg_min_in_bed,
  sleep_avg.avg_time_to_fall_alseep;


--Results

Id	            avg_min_alseep	   avg_min_in_bed	    avg_time_to_fall_alseep
1503960366         360.28            383.20              22.92
