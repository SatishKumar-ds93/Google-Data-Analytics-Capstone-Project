### Cyclistic_Exercise_Full_Year_Analysis ###

# This analysis is based on the Cyclistic case study 
# The purpose of this script is to consolidate downloaded data 
# into a single dataframe and then conduct simple analysis to help 
# answer the key question: “In what ways do members and casual riders use 
# Cyclistic bikes differently?”

# # # # # # # # # # # # # # # # # # # # # # # 
# Install required packages
# tidyverse for data import and wrangling
# # # # # # # # # # # # # # # # # # # # # # #   

#library(tidyverse)  #helps wrangle data
#library(lubridate)  #helps wrangle date attributes
#library(ggplot2)  #helps visualize data



#=====================
# STEP 1: COLLECT DATA
#=====================
# Set your working directory to the folder containing your 12 CSVs
# setwd("/Users/yourname/Desktop/Cyclistic_Data") 

# Read all 12 CSV files and combine them into one dataframe
# This assumes all 12 files are in the same folder and have the same columns

getwd() #displays your working directory
setwd("Your_File_Destination") #sets your working directory
#setwd(r"(D:\Google Data Analyst\Data Analyst\Course\Course 8\Module 2 Capstone Project\TRACK A\Case study 1 Project\Divya_Trips_2023_CSV\R Studio\trip_data)")

getwd() #check you set your directory correctly


#=====================
# STEP 2: UPLOAD DATA
#=====================
# Upload Cyclistic datasets (csv files) here

#library(readr)

db01 <- read_csv("202301-divvy-tripdata.csv")
db02 <- read_csv("202302-divvy-tripdata.csv")
db03 <- read_csv("202303-divvy-tripdata.csv")
db04 <- read_csv("202304-divvy-tripdata.csv")
db05 <- read_csv("202305-divvy-tripdata.csv")
db06 <- read_csv("202306-divvy-tripdata.csv")
db07 <- read_csv("202307-divvy-tripdata.csv")
db08 <- read_csv("202308-divvy-tripdata.csv")
db09 <- read_csv("202309-divvy-tripdata.csv")
db10 <- read_csv("202310-divvy-tripdata.csv")
db11 <- read_csv("202311-divvy-tripdata.csv")
db12 <- read_csv("202312-divvy-tripdata.csv")


#Click on Refresh in the Environment pane to check the data structure



#====================================================
# STEP 3: DATA WRANGLE AND COMBINE INTO A SINGLE FILE
#====================================================


#Combined 12 csv files into 1 big files


#library(dplyr)

# Stack individual data frames into one big data frame
all_trips <- bind_rows(db01,db02,db03,db04,db05,db06,db07,db08,db09,db10,db11,db12)

#Verify the results by Refresh in the Environment pane



#===========================================
# STEP 4: DATA TRANSFORM AND DATA CLEANING
#===========================================


# 1. started_at and ended_at Date Match


#library(tidyverse)
#library(lubridate)

# Keep only rows where the start and end dates are exactly the same
all_trips_clean <- all_trips %>%
  filter(as.Date(started_at, format="%d-%m-%Y") == as.Date(ended_at, format="%d-%m-%Y"))



# 2. Calculate ride_length into HH:MM:SS


#library(tidyverse)
#library(hms)


#Calculate ride_length and format as HH:MM:SS

all_trips_clean <- all_trips_clean %>%
  mutate(
    started_at = as.POSIXct(started_at, format = "%d-%m-%Y %H:%M"),
    ended_at = as.POSIXct(ended_at, format = "%d-%m-%Y %H:%M"),
    ride_length = as_hms(difftime(ended_at, started_at, units = "secs"))
  )




# 3. Convert ride_length into positive and non-zero value

#library(tidyverse)

# Filter for ride_length greater than or equal to 60 seconds (1 minute)
all_trips_v2 <- all_trips_clean %>%
  filter(ride_length >= 60)



# 4. Convert ride_length [HH:MM:SS] into minute format


# Create a new column 'ride_length_min'


all_trips_v2$ride_length_min <- as.numeric(as.difftime(all_trips_v2$ride_length, 
                                                        format = "%H:%M:%S", 
                                                        units = "mins"))


# Divide the existing column by 60 to convert from 660 to 11
all_trips_v2$ride_length_min <- all_trips_v2$ride_length_min / 60



# 5. Create a Date Column

#library(tidyverse)

all_trips_v2 <- all_trips_v2 %>%
  mutate(start_date = format(as.Date(started_at), "%d-%m-%Y"))



# 6. Create a column day of week (for example WEEKDAY(started_at,1) where 1 is Sunday & 7 is Saturday

#library(tidyverse)
#library(lubridate)

# Create the day_of_week column
all_trips_v2 <- all_trips_v2 %>%
  mutate(day_of_week = wday(started_at))



# Create a column day

#library(tidyverse)

all_trips_v2 <- all_trips_v2 %>%
  mutate(day = recode(day_of_week,
                      "1" = "Sunday",
                      "2" = "Monday",
                      "3" = "Tuesday",
                      "4" = "Wednesday",
                      "5" = "Thursday",
                      "6" = "Friday",
                      "7" = "Saturday"))





# 7. Create a column with month number and name of the month

#library(tidyverse)
#library(lubridate)

all_trips_v2 <- all_trips_v2 %>%
  mutate(
    # Create month number (1, 2, 3...)
    month_num = month(started_at),
    
    # Create full month name (January, February...)
    month_name = month(started_at, label = TRUE, abbr = FALSE)
  )


#=====================================
# STEP 4: CONDUCT DESCRIPTIVE ANALYSIS
#=====================================

# 1. Descriptive analysis on ride_length (all figures in seconds)


# Calculate the mean median max min

# a. mean(all_trips_v2$ride_length) #straight average (total ride length / rides)

mean(all_trips_v2$ride_length_min)

#Mean value is 14.72983



# b. median(all_trips_v2$ride_length) #midpoint number in the ascending array of ride lengths

median(all_trips_v2$ride_length_min)
# 10

# Median ride length min is 10 min



# c. max(all_trips_v2$ride_length) #longest ride

max(all_trips_v2$ride_length_min)
# 1373

# Maximum ride length min value 1373 min or 23 hrs 28 min (longest ride)



# d. min(all_trips_v2$ride_length) #shortest ride

min(all_trips_v2$ride_length_min)
# 1

# Minimum ride length min is 1 min





# 2. You can condense the four lines above to one line using summary() on the specific attribute 
# summary(all_trips_v2$ride_length)

summary(all_trips_v2$ride_length_min)

#Min 1 Median 10 Mean 14.73 Max 1373




# 3. Compare members and casual users

# a. aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = mean)
# b. aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = median)
# c. aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = max)
# d. aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual, FUN = min)


# a. Compare Mean value from member vs casual (minute)

aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual, FUN = mean)

# Mean casual 19.64
# Mean member 11.98 



# b. Compare Median value from member vs casual (minute)

aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual, FUN = median)

# Median casual 12
# Median member 9



# c. Compare Max value from member vs casual (minute)

aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual, FUN = max)

# Max casual 1373
# Max member 1356


# d. Compare Min value from member vs casual (minute)

aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual, FUN = min)

# Min casual 1
# Min member 1




# 4. See the average ride time by each day for members vs casual users

aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)


# 5. # Notice that the days of the week are out of order. 
# Let's fix that.
# all_trips_v2$day_of_week <- ordered(all_trips_v2$day_of_week, levels=c("Sunday", "Monday",
                                                                       "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))
# In my R script i have already ordered day of week in serail wise so no need to RUN


# Now, let's run the average ride time by each day for members vs casual users

# aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)




# =======================
# Analyze and Calculation
# =======================


# 6. analyze ridership data by type and weekday


all_trips_v2 %>%
  mutate(weekday = wday(started_at, label = TRUE)) %>%
  group_by(member_casual, weekday) %>%
  summarise(
    number_of_rides = n(),
    average_duration = mean(ride_length_min)
  ) %>%
  arrange(member_casual, weekday)


# ======================
# Visualization
# =======================

# 7. a) Let's visualize the number of rides by rider type

# library(ggplot)

all_trips_v2 %>%
  mutate(weekday = wday(started_at, label = TRUE)) %>%
  group_by(member_casual, weekday) %>%
  summarise(
    number_of_rides = n(),
    average_duration = mean(ride_length_min)
  ) %>%
  arrange(member_casual, weekday) %>%
  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge") +
  scale_y_continuous(labels = scales::comma) +
  labs(title = "Total Annual Rides by Weekday")


# 7.b) Let's create a visualization for average duration

all_trips_v2 %>%
  mutate(weekday = wday(started_at, label = TRUE)) %>%
  group_by(member_casual, weekday) %>%
  summarise(
    number_of_rides = n(),
    average_duration = mean(ride_length)
  ) %>%
  arrange(member_casual, weekday) %>%
  ggplot(aes(x = weekday, y = average_duration / 60, fill = member_casual)) +
  geom_col(position = "dodge") +
  scale_y_continuous(labels = scales::comma) +
  labs(title = "Average Annual Ride Duration by Weekday", y = "Average Duration (minutes)")





#=================================================
# STEP 5: EXPORT SUMMARY FILE FOR FURTHER ANALYSIS
#=================================================

# Create a csv file that we will visualize in Excel, Tableau, or my presentation software
# N.B.: This file location is for a Mac. If you are working on a PC, change the file location accordingly (most likely "C:\Users\YOUR_USERNAME\Desktop\...") to export the data. You can read more here: https://datatofish.com/export-dataframe-to-csv-in-r/


counts <- aggregate(all_trips_v2$ride_length_min ~ all_trips_v2$member_casual +
                      all_trips_v2$day_of_week, FUN = mean)

write.csv(counts, file = 'D:/Google Data Analyst/Data Analyst/Course/Course 8/Module 2 Capstone Project/TRACK A/Case study 1 Project/Divya_Trips_2023_CSV/R Studio/avg_ride_length.csv', row.names = FALSE)

