# Google Data Analytics Capstone Project: Cyclistic

### Case Study: How does a bike-share navigate speedy success?

![image](https://miro.medium.com/1*btecI8i1yNczHsGP3z_sCg.png)


### **Project Overview**

Welcome to the Cyclistic bike-share analysis case study. This case study is the Capstone Project of Google Data Analytics Professional Certificate. This project follows the structured data analysis process (Ask, Prepare, Process, Analyze, Share, and Act) to uncover actionable business insights of Cyclistic company, a fictional Chicago bike-share company.


#### The Scenario

I am working as a Junior Data Analyst on the marketing analytics team, my goal is to analyze how casual riders and annual members use Cyclistic bikes differently. The Director of Marketing believes maximizing annual memberships is key to future growth. Our findings will shape a marketing strategy to convert casual riders into members, which must be backed by compelling data visualizations to win executive approval.


#### Key Stakeholders & Entities

- Cyclistic: A Chicago bike-share program with 5,800+ bikes and 600+ stations. It features inclusive options (cargo bikes, tricycles) and serves both leisure riders and daily commuters (30%).

- Lily Moreno: Director of Marketing and your manager; responsible for campaigns. Marketing Analytics Team: Our core team, responsible for data collection and strategy.

- Executive Team: The detail-oriented leadership group that must approve your final recommendations.


### **About the Company**

Launched in 2016, Cyclistic operates a Chicago bike-share network with 5,824 geo-tracked bicycles and 692 stations. The system allows users to unlock a bike at any station and return it to any other.


#### Business Problem¶

Historically, marketing focused on broad consumer awareness using three flexible pricing plans: single-ride passes, full-day passes, and annual memberships.

- Casual Riders: Users buying single-ride or full-day passes.
- Cyclistic Members: Users buying annual memberships.

Finance analysts confirmed that annual members are significantly more profitable than casual riders.


#### Strategy Goal

The Director of Marketing aims to drive future growth by converting existing casual riders into annual members, rather than targeting entirely new customers. Because casual riders already know and use the service, they represent a strong conversion opportunity. To achieve this, the analytics team will analyze historical bike trip data to determine:

1. How casual riders and annual members use the bikes differently.
2. Why casual riders would transition to an annual membership.
3. How digital media can influence this target audience.


There are 6 Phases

1. Phase 1: **Ask**
2. Phase 2: **Prepare**
3. Phase 3: **Process**
4. Phase 4: **Analyze**
5. Phase 5: **Share**
6. Phase 6: **Act**


## Phase 1: Ask
*The primary goal of the "Ask" phase is to clearly articulate the problem that needs to be solved and identify who will use the insights generated from the analysis.*


### **Case Study Roadmap** - Ask 


Guiding questions


### ● What is the problem you are trying to solve?


**Problem Statement**

The core problem to solve is that while Cyclistic has strong general awareness and a healthy user base, annual members are significantly more profitable than casual riders (single-ride and full-day pass users). The company's future growth depends on maximizing these profitable annual memberships. Rather than seeking entirely new customers, the strategy focuses on converting existing casual riders who are already familiar with the service.


### ● How can your insights drive business decisions?


**Impact on Business Decisions**

The insights gained from this analysis will directly drive the following business decisions:


•	**Marketing Strategy Design**: Understanding the differences in usage patterns (e.g., trip duration, time of day, day of week, start/end locations, bike types used) will allow the marketing team to segment casual riders.


•	**Targeted Messaging**: The findings will inform the creation of specific marketing messages that highlight the benefits most relevant to the "high-potential" casual rider segments (e.g., cost savings for frequent commuters, convenience for specific routes).


•	**Executive Approval**: The data insights and professional visualizations produced in the final report will be crucial for convincing the detail-oriented executive team to approve the proposed new marketing campaigns.


### Key tasks
 

● Identify the business task

The business objective is to design marketing strategies aimed at converting existing casual riders into annual members to maximize company profitability and future growth.

The specific data analysis task assigned is to determine:
 
 
 
 **“How do annual members and casual riders use Cyclist bikes differently?”**

The findings from this analysis will serve as the foundation for answering the subsequent questions: "Why would casual riders buy Cyclistic annual memberships?" and "How can Cyclistic use digital media to influence casual riders to become members?"



● Consider key stakeholders

The following stakeholders have vested interests in the outcome of this analysis:

- Director of Marketing:	**Lily Moreno**	Needs data-driven insights to develop and justify a targeted marketing campaign for converting casual riders into members. She is the direct manager and primary audience for the initial report.


- Junior Data Analyst:	**Me**	Responsible for executing the analysis, producing reliable insights, visualizations, and recommendations to support the marketing strategy.
  

- Marketing Analytics Team:	N/A	The team collaborating on the project, using the analysis to guide the overall marketing strategy.


- Cyclistic Executive Team:	N/A	The final decision-makers who must approve the recommended marketing program. They require compelling, data-backed evidence and professional visualizations to sign off on new initiatives.


- Cyclistic Finance Analysts:	N/A	Provide the core business context that annual members are more profitable, which drives the entire project's premise.


This analysis will provide the necessary insights to move into the data preparation phase.



### Deliverable

● A clear statement of the business task

*The business task assigned is to provide data-driven insights to help Cyclistic convert casual riders into annual members.*


## Phase 2: Prepare
*Google Sheets won't open files of these sizes. Excel is the only option to open the data.*


This document outlines the **Prepare** phase of the data analysis for the Cyclistic case study, addressing the guiding questions and key tasks specified in the roadmap using the provided divvy-trip data description.


### **Case Study Roadmap - Prepare** 


Guiding questions


### ● Where is your data located?


**Data Location & Acquisition**

The data used for this case study is Cyclistic's historical trip data, which has been made publicly available by Motivate International Inc.


**Download Link**

Download the most recent consecutive annual data here (which will be 12 files):

[Tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)


**Data Selection**

As per the case study instructions, I will use the previous 12 months of data (typically encompassing monthly zip files, for example, from Jan 2023 to Dec 2023, depending on the current date of execution) to capture recent trends and seasonality.

•	Unzip all 12 files.
•	Separate CSV data into another folder.
•	Total Count of Rows(ride_ID of 12 files): 5719896


**Data Storage**

The individual monthly .CSV files will be downloaded, unzipped, and stored locally in a secure, organized folder structure before being imported into the chosen analysis tool (e.g., Excel, RStudio, SQL, or Python) for consolidation and processing. 

The data is stored in CSV files. Each file contains one month data. Thus, a total of 12 .CSV files.


### ● How is the data organized?

**Data Organization and Structure**


The data is structured and organized into individual monthly CSV files. Each file represents a large table where every row is a single bike trip. The columns provide specific details about each ride. 


- **Key columns relevant to the analysis include: Total 13 Columns**

•	ride_id: A unique identifier for each trip

•	rideable_type: The type of bike used (e.g., classic bike, electric bike, docked bike)

•	started_at: Datetime stamps for the start of the ride

•	ended_at: Datetime stamps for the end of the ride

•	start_station_name: Name of the start stations

•	start_station_id: Start Stations ID

•	end_station_name: Name of the end stations

•	end_station_id: End Stations ID

•	start_lat: Latitudes Geographical coordinates for start mapping routes

•	start_lng: Longitudes Geographical coordinates for end mapping routes

•	end_lat: Latitudes Geographical coordinates for end mapping routes

•	end_lng: Longitudes Geographical coordinates for end mapping routes

•	member_casual: The primary variable identifying the user type as either "member" (annual) or "casual" (single/day pass)


### ● Are there issues with bias or credibility in this data? Does your data ROCCC? 


**Data Credibility and Bias Assessment (ROCCC)**


The data meets the criteria for high-quality data (ROCCC - Reliable, Original, Current, Cited, Comprehensive) for the purposes of this case study:
 

•	**Reliable & Original**: The data is internally sourced from Motivate International Inc., the actual operators of the Chicago bike-share system, making it a trustworthy primary source.


•	**Current**: Using the most recent 12 months ensures the data reflects current user behavior and market conditions.


•	**Cited**: The source is clearly cited as Motivate International Inc. under an open data license.


•	**Comprehensive**: It contains all necessary fields (member or casual), trip duration data, location) to answer the business question of how user types differ in their usage patterns.



#### **Potential Biases/Limitations:**


•	The data only reflects users who chose the bike-share system, which might not be representative of all potential Chicago cyclists.

•	Data privacy rules prohibit the use of personally identifiable information (PII), meaning we cannot link a casual rider's multiple trips across different days to one individual or track their credit card information. This prevents analysis of how much a single casual rider spends annually. This limitation must be addressed during the "Act" phase when forming recommendations.

•	The financial information such as each Ride Id ticket fare is not available.

•	If the personally identifiable information and financial information were available, I could have calculated whether the casual riders had spent more money than if they opt for taking annual memberships.

•	This data does not contain data about the use of reclining bikes, hand tricycles, and cargo bikes. It is said that about 8% of total riders use assistive options.


### ● How are you addressing licensing, privacy, security, and accessibility? 


Licensing, Privacy, and Security

•	Privacy: PII (names, addresses, credit card info) has already been removed from the public dataset to comply with privacy issues. The available data fields (gender, member) are aggregated categorical data that do not directly identify an individual rider in a way that violates the licence agreement.

•	Licensing: The data is provided under a specific license. This agreement allows for analysis and use as source material in reports for non-commercial purposes but prohibits redistributing the data as a standalone product or attempting to correlate the data with user identities.


**Link**: 

[licence-agreement](https://divvybikes.com/data-license-agreement)


•	Security & Accessibility: The data will be stored securely on a local machine or a private cloud drive. It is accessible to the analysis team members collaborating on the project.



### ● How did you verify the data’s integrity? 


To verify the integrity of the data using the specific schema provided (which includes fields like **rideable_type**, **started_at**, and **member_casual**), 


I performed the following validation steps:


1.	Structure and Consistency Checks

•	**Schema Conformance**: I ensured all data files (e.g., monthly CSVs) adhered strictly to the provided column structure (ride_id, rideable_type, started_at, ended_at, etc.). Consistency in naming and data types across all source files was essential before merging the annual data into a single dataset.

•	**Completeness of Key Variables**: I checked for null or missing values in critical columns such as ride_id, started_at, ended_at, and member_casual. Records with missing primary identifiers or user types were flagged, as they cannot contribute to the core analysis of usage differences.

•	**Uniqueness of Identifiers**: I verified that the ride_id was unique for every single observation in the consolidated dataset, confirming that each row represented a distinct trip event and preventing double-counting.



- How does it help you answer your question? 


The dataset, once verified and prepared, directly enables the answering of the core business question: **"How do annual members and casual riders use Cyclistic bikes differently?"**

The data helps answer this question by providing specific metrics that allow for a direct, quantitative comparison between the two user types across several key dimensions:


#### **1. Direct Segmentation**

The member_casual column is the primary classification variable. It allows the data to be cleanly segmented into the two target populations ("member" and "casual"), making head-to-head comparisons possible across all other fields.

#### **2. Usage Patterns (Time and Frequency)**


By utilizing the time-related data, we can uncover behavioral patterns:

•	**Frequency and Consistency**: Aggregating data by month, week, day of the week, and hour allows us to see when each group rides. We expect members to ride frequently (likely during weekday commute hours) while casual riders might exhibit weekend or holiday peaks.

•	**Trip Duration** (started_at, ended_at): Calculating the average trip_duration for members vs. casual riders is a critical metric. Casual riders typically take much longer, leisurely trips, whereas members take shorter, utilitarian trips. This difference is a key insight into their motivation.


#### **3. Service Preferences (Bike Type and Location)**

The spatial and equipment data provides insight into how the service is used:

•	**Bike Type** (rideable_type): Analyzing which bike types (classic vs. electric) are preferred by which user group helps tailor inventory management and marketing around specific offerings.

•	**Location** (start_station_name/end_station_name, lat/lng): Geospatial analysis helps identify where each group starts and ends their journeys.

o	**Members** likely use stations near residential areas and central business districts (commuter routes).

o	**Casual Riders** likely use stations near tourist hotspots, parks, and leisure areas.

o	This pinpoints specific locations where marketing efforts to convert casual riders might be most effective.


By analyzing these variables side-by-side for both groups, we gain the compelling data insights required to form targeted marketing strategies and recommendations that will eventually be presented to the Cyclistic executive team.


### ● Are there any problems with the data? 

Based on the provided data schema and case study prompt, there are a few problems and significant limitations inherent in the public dataset that must be acknowledged during the analysis:


#### 1. Data Anonymization Limits Deeper Analysis

The primary limitation, as highlighted in the case study scenario, relates to data privacy:


•	**Inability to Link Casual Rider Behavior**: Due to data-privacy rules, personally identifiable information (PII) is removed. We cannot connect a single casual rider’s multiple, individual one-day passes across time. This means we cannot track the lifetime value of an individual "casual" user or proactively identify a specific person who is almost frequent enough to warrant a membership. We can only analyze aggregated behavior.


### 2. Potential for Outliers and Inaccurate Records

Even after initial integrity checks, raw operational data often contains anomalies:

•	**Erroneous Trip Durations**: The dataset might contain trips with extremely short durations (near zero seconds) that represent failed docking attempts, or extremely long durations (multiple days) which often indicate a bike that was lost, stolen, or improperly docked and logged as a single continuous trip. These outliers must be filtered out during the "Process" phase to avoid skewing average trip duration calculations.

•	**Missing Location Data**: There might be instances where start_station_name or end_station_name fields are null or generic (e.g., "Divvy Valet"), especially if the system includes dockless bikes. This slightly limits precise location-based analysis for those specific trips.


#### 3. Data Schema Inconsistencies and Aging Fields

The use of older 2023 data presents some structural issues compared to modern datasets:

•	**Inconsistent Column Names (Potential)**: While the schema looks consistent in the prompt, merging real-world quarterly CSV files from an operational system often reveals minor naming discrepancies (e.g., rideable_type vs. rideabletype or capitalization differences) that require cleaning.

•	**Presence of Sensitive Demographics**: The presence of location start_lng/end_lng and start_lat/end_lat fields might pose ethical considerations depending on how the final analysis is shared, even if they are within the bounds of the license agreement. A modern data analyst might choose to exclude these fields entirely to adhere to best practices in data minimization and fairness.


### Key tasks

● Download data and store it appropriately.

Download the file from this link [](https://divvy-tripdata.s3.amazonaws.com/index.html)

As per the case study instructions, I will use the previous **12 months** of data (typically encompassing monthly zip files, for example, from **Jan 2023 to Dec 2023**, depending on the current date of execution) to capture recent trends and seasonality.

•	Unzip all **12 files**

•	Separate **CSV** data into another folder



● Identify how it’s organized.

The data is **structured** and **organized** into individual monthly CSV files. Each file represents a large table where every row is a single bike trip. The columns provide specific details about each ride. 


It has **total 13 Columns**.



### ● Sort and filter the data.

In MS-Excel, after applying Filter in all 12 datasets, I found some **Blank Cells** in some columns.


#### Columns name having Blank Cells:

•	start_station_name: Name of the start stations

•	start_station_id: Start Stations ID

•	end_station_name: Name of the end stations

•	end_station_id: End Stations ID

•	end_lat: Latitudes Geographical coordinates for end mapping routes

•	end_lng: Longitudes Geographical coordinates for end mapping


### Filter


**Missing Values**:

•	ride_id: A unique identifier for each trip and delete the missing and bad data rows from ride_ID.


● Determine the credibility of the data. 

The data meets the criteria for high-quality data (ROCCC - Reliable, Original, Current, Cited, Comprehensive) for the purposes of this case study:
 
•	**Reliable & Original**: The data is internally sourced from Motivate International Inc., the actual operators of the Chicago bike-share system, making it a trustworthy primary source.

•	**Current**: Using the most recent 12 months ensures the data reflects current user behavior and market conditions.

•	**Cited**: The source is clearly cited as Motivate International Inc. under an open data license.

•	**Comprehensive**: It contains all necessary fields (member or casual), trip duration data, location) to answer the business question of how user types differ in their usage patterns.


### Limitations:

•	The **financial information** such as each **Ride Id ticket fare is not available**.

•	This data does not contain data about the use of **reclining bikes, hand tricycles**, and **cargo bikes**.

•	Demographic details like gender and location not available in the given dataset.

•	Geographical map analysis not possible because of blank cells in the start and end columns.



### Deliverable

● A description of all data sources used

The data meets the criteria, downloaded the annual data (12 zip files) and stored into new folder and save as into **.CSV format** for data organising and future use of data transformation and data cleaning.


#### Noted

*Before jumping to the next phase check my Kaggle Page*

[Google Data Analytics Capstone Project using Python: Cyclistic](https://www.kaggle.com/code/satishkr93/google-data-analytics-capstone-project-cyclistic)


## Phase 3:  Process

*combining the 12 files into 1 for data transformation and cleaning.*


### Case Study Roadmap - Process


Guiding questions 


### ● What tools are you choosing and why? 

Excel was used for the initial "Prepare" inspection and initial data cleaning and transformation steps, but it cannot handle the combined volume of 12 months of data (which typically exceeds **5 million rows**). SQL/R allows for efficient merging (UNION), handling of null values, and complex transformations that would crash standard spreadsheet software.


**Data Information**

- Unzip all 12 divvy trip data Files into CSV
- Dataset 12 Month: January to December
- Total Count of Rows(ride_ID) after **Delete Rows** ‘Bad Data’: **5719897**


Tools Used: **MS-Excel and Power Query Editor**


### ● Have you ensured your data’s integrity? 


**To maintain integrity during processing**:

•	Verified that ride_id remains the primary key (check duplicates, irregular, missing, null values).

•	**No Duplicates found** in data set (In excel, Select Column ride_ID, Goto Data>Remove Duplicates).

•	Confirmed that data types are consistent across all 12 files (e.g., ensuring started_at is recognized as a TIMESTAMP/DATETIME) in correct FORMAT.

•	Maintained a "Raw Data" backup, performing all cleaning on a separate working table.



## MS-Excel & Power Query Editor


### ● What steps have you taken to ensure that your data is clean? 


## Data Cleaning & Transformation Steps


#### A.	Data Consolidation/Collecting

•	Unzip 12 individual files into CSV files (Jan 2023 – Dec 2023) and store into new folder.
•	After Filtering in Prepare phase, **Remove Bad Data** in ride_ID column, **DELETE** those rows.


**Data Combining**
•	Open 2023 01(Jan) data in Excel & Launch into Power Query Editor for data cleaning.


#### B.	Handling Missing & Null Values


•	**Station Names/IDs**: Identified significant "NULL" values in start_station_name and end_station_name. Since these are essential for location analysis but cannot be reliably guessed, these specific rows will be excluded from any "Popular Station" or "Route Analysis," but kept for "Trip Duration" and "Time of Day" analysis to avoid losing volume data.


•	**Lat/Lng Coordinates**: Rows with missing end_lat or end_lng were found to ensure any mapping attempts, for analysis, data save for future use and to avoid losing volume.


#### C.	Data Transformation & Cleaning

**Add Column (DATE ONLY)**

•	**Separate Date and Time in another Column**: in column **started_at & end_at** the date and time information in the same column, separate DATE (01-01-2023) and TIME (HH:MM: SS).

•	**date**: date of started_at column added

•	**time of started_at**: time of started at column separated from date.


#### ROUND 2 Decimal

•	Round upto 2 Decimal in start_lat or end_lat and start_lng or end_lng

As per the given instructions, I created the following calculated fields:


#### ADD CUSTOM COLUMN

1.	**ride_length**: Calculated the difference between ended_at and started_at (result in HH:MM:SS). Go to Add Column>Custom Column. Put formula =[ended_at]-[tarted_at]

2.	**Remove errors**: Negative Durations, removed any rows where ended_at was before to started_at. (e.g., 1 minute to 24 hours). Remove Errors in **ride_length** column.

**Noted**: *Stored those data for future use those have Zero Durations, Not removed rows where ended_at was equal to started_. [00:00:00]*

3.	**ride_length_minute**: convert ride_length [01:30:00] format into minute [75] by putting formula in Custom Column. Go to Add>Custom Column. Put formula, = ride_length * 1440

4. **minute**: extracted to identify peak commute times vs. leisure times.

5. **hour**: extracted to identify peak commute times vs. leisure times.



#### ADD NEW COLUMN with DATE EXTRACTION

6.	**month/month_name**: extracted to analyze seasonality by started_at DATE column.


#### REMOVE COLUMNS

7.	**Remove Bad Data Columns**: start_station_id and end_station_id , end_date.

8.	**Remove date from ended_at column**: time of ended _at column separated from time.


#### D.	Close & Apply Load to Excel Spreadsheet

9.	**day_of_week**: Extracted the day of the week from the started_at column (e.g., 1 = Sunday, 7 = Saturday). Put formula in excel cell in column day_of_week, =WEEKDAY(F2, 1).

10.	**day**: name of the weekday (Monday, Sunday). Using formula =TEXT(day_of_week, “dddd”).


### ● How can you verify that your data is clean and ready to analyse? 

 **Verification of Cleanliness**

•	Ran COUNT(ride_id) to ensure no duplicates.

•	Ran MIN and MAX on ride_length to ensure all values are positive and within a realistic range (e.g., 1 minute to 24 hours).

•	Checked DISTINCT (member_casual) to ensure only "member" and "casual" exist in the final dataset.


### ● Have you documented your cleaning process so you can review and share those results?


### Results

Total Rows Count ride_ID (raw data or before data cleaning): 5719787

Final Rows Count after Data Cleaning (including 0 duration ride_ID): **5373822**

Final Rows Count after Data Cleaning (excluding 0 duration ride_lD): **5288107**


### ● Key tasks


● Check the data for errors.

**DELETE Bad Data Columns**: remove unnecessary bad data rows from the column ride_id 

**Remove Bad Data Columns**: start_station_id and end_station_id, end_date.

**REMOVE Errors Columns**: remove errors rows from ride_length due to negative values.

**Unfiltered time duration in ride_length columns**: unfiltered rows whose value is 00:00:00 (1min to 24hrs).



● Choose your tools.

**Data Collecting**: MS-Excel

**Data Exploration**: MS-Excel & Power Query Editor

**Data Combining**:  MS-Excel Power Query Editor (MS Power BI, Tableau, Big-Query SQL, R)

**Data Transformation**: MS-Excel Power Query Editor (MS Power BI, Tableau, Big Query-SQL, R)

**Data Cleaning**: Power Query Editor (MS Power BI, Tableau, Big Query-SQL, R)

**Data Statistics and Insight**: Big-Query SQL, R)

**Data Visualization**: MS Power BI and Tableau



● Transform the data so you can work with it effectively.

For Data Combing and Data Transformation **MS Power BI Query Editor** is the easiest and simple process to organized the data.

Other Options to transform the 12 data csv files: **Tableau & SQL**



● Document the cleaning process

For Data Cleaning **MS Power BI Query Editor** and **Tableau** is the best option.




### Deliverable
 
● Documentation of any cleaning or manipulation of data

Query Editor used to combine the various datasets into one dataset and clean it.

Total Rows Count ride_ID (raw data or before data cleaning): 5719787

Final Rows Count after Data Cleaning (including 0 duration ride_ID): **5373822**

Final Rows Count after Data Cleaning (excluding 0 duration ride_lD): **5288107**



#### Key columns relevant to the analysis include: Total **20 Columns**

**•	ride_id**: A unique identifier for each trip.

**•	rideable_type**: The type of bike used (e.g., classic bike, electric bike, docked bike).

**•	day_of_week**: day of the week from the started_at column (e.g., 1 = Sunday, 7 = Saturday).

**•	day**: name of the day (e.g Sunday, Monday)

**•	month**: extracted to analyze seasonality by started_at DATE column. (eg. 1)

**•	name_of_the_month**: extracted to analyze seasonality by started_at DATE column. (eg. January)

**•	date**: date of started_at column added

**•	started_at**: Datetime stamps for the start of the ride.

**•	ended_at**: Datetime stamps for the end of the ride.

**•	ride_length**: difference between ended_at and started_at in the time format [HH:MM:SS]

**•	ride_length_min**: the time format

**•	minute**: extracted to identify peak commute times vs. leisure times.

**•	hour**: extracted to identify peak commute times vs. leisure times.

**•	start_station_name**: Name of the start stations.

**•	end_station_name**: Name of the end stations.

**•	start_lat**: Latitudes Geographical coordinates for start mapping routes. 

**•	start_lng**: Longitudes Geographical coordinates for end mapping routes.

**•	end_lat**: Latitudes Geographical coordinates for end mapping routes.

**•	end_lng**: Longitudes Geographical coordinates for end mapping routes.

**•	member_casual**: The primary variable identifying the user type as either "member" (annual) or "casual" (single/day pass).


## Phase 4: Analyze

*combining all 12 files into 1 file and stored the data after data transformation and cleaning. Now start analysis as per instructions and requirement.*

### Case Study Roadmap - Analyze


Guiding questions 

### ● How Should you organize your data to perform analysis on it? 

Once you have combined and cleaned your 12 CSV files into a single master file, you should organize your data according to "Tidy_Data" with rename such as “cleaned_data” to ensure it is optimized for analysis across MS Power BI, Big Query SQL, and R Studio.

Data Cleaning Table name and Total number of Rows

•	Big Query-SQL: cyclistic.cleaned_annual_trips- 5606188
•	R Studio: all_trips_v2- 5600814

Descriptive Analysis:  BIG Query Editor, R Studio
Visualization: MS Power BI, Tableau

##### Before Data Cleaning

![Before Data Cleaning](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/1.png?raw=true)


### ● Has your data been properly formatted? 

In Process phase all the data formatted correctly as per given instructions:

•	All the 12 CSV files combined in 1 file for data transformation and data cleaning.
•	Calculate the ride_length with minute format without negative or 0 values.
•	Create a column for Date format(dd:mm:yyy) and Calculate Day of Week (1=Sunday & 7=Saturday)


### ● What surprise did you discover in the data?

	Based on the instructions the data calculation done by 2 methods

1.	Descriptive
2.	Visualization

##### After Data Cleaning

![Total Rows](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/2.png?raw=true)

##### Results

Initial Data Cleaning on MS-Excel CSV

Actual Data Total Row Counts: 5719896
After Remove Duplicate or Unecessary Values Total Row Counts: **5719787**

After Data Cleaning Total Row Counts:

Initial row count: **5,689,757**
Cleaned row count: **5,600,814**
Removed rows (negative, >23:59h, or next-day spillovers): 88,943
Total number of Rows For Analysis: **5,600,814**

#### Mean Median Mode by Casual vs Annual Member

![Mean Media Mode](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/mean%20median%20mode.png?raw=true)


#### Monthly wise total rides

![Monthly wise](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/3.png?raw=true)


#### Day of Week

![day of week](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/day%20of%20week%20avg%20ride%20len%20min.png?raw=true)


##### Day wise

![day wise](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/day%20wise.png?raw=true)


##### Busiest Month

![busy month](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/4.png?raw=true)


#### Casual vs Annual Member

![casual vs member](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/6.png?raw=true)


##### Percentage Share

![percentage share](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/7.png?raw=true)


####  Bike Types

![Bike Types](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/5.png?raw=true)

### Data Visualization


#### A. Total Annual Rides on Day of week

![annual](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/8.png?raw=true)


#### B. Average Duration in minute on Day of the Week

![avg duration](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/9.png?raw=true)

#### C. Monthly wise Total Rides

![montly wise](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/10.png?raw=true)


#### D. Monthly Rides analysis: Casual vs Member

![Monthly rides](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/11.png?raw=true)


#### E. Time-series analysis

![time](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/12.png?raw=true)



#### F. Bike Type Analysis

![monthly](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%201%20Cyclistic/Images/13.png?raw=true)


#### Noted:

*To know more about insights Go to my Kaggle Page*

[Google Data Analytics Capstone Project: Cyclistic](https://www.kaggle.com/code/satishkr93/google-data-analytics-capstone-project-cyclistic)


## Phase 5: Share

*After Descriptive analysis my primary goal is to answer the guiding
questions using the evidence in my uncovered in Python and visualized in
Tableau.*

#### Dashboard: Tableau Public Link

[Dashboard](https://public.tableau.com/app/profile/satish.kumar6456/viz/GoogleDataAnalyticsCaseStudy1CyclisticBikeShareProjectDashboard/Dashboard1)


Share: Share of your Google Data Analytics Capstone project, your primary goal is to answer the guiding questions using the evidence you uncovered in Python and visualized in Tableau.

Since your audience is the Cyclistic executive team (Lily Moreno and the board), your answers must be clear, data-driven, and focused on business value.


### Case Study Roadmap - Share


Guiding questions 

### ●  Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?

#### 1. What to write:

Yes. The data revealed distinct operational, behavioral, and temporal differences between annual members and casual riders. Annual members primarily use Cyclistic as a dependable commuter utility, while casual riders utilize it for leisure, tourism, and weekend recreation.

#### 2. What story does your data tell?

•	What to write: The data tells a story of two entirely different customer personas:

**o	The Commuter (Members)**: Their trip counts spike sharply around standard office rush hours (8:00 AM and 5:00 PM) from Monday to Friday. Their trip durations are short, consistent, and predictable (typically averaging 10–13 minutes), showing they value efficiency and travel fixed routes.

**o	The Leisure Seeker (Casuals)**: Their demand surges on weekends (Friday through Sunday) and during afternoon leisure hours. Their trips last significantly longer on average (usually 20–25+ minutes) and peak heavily during summer months (June to August), indicating recreational and tourist use.


#### 3. How do your findings relate to your original question?**

**•	What to write:** The findings directly address the original business objective: identifying how to convert casual riders into annual members. By proving that casual riders take longer trips and ride primarily on weekends, we now know that a successful marketing campaign must target weekend/leisure habits rather than daily commuting needs.


#### 4. Who is your audience? What is the best way to communicate with them?

**•	What to write**: The primary audience is Lily Moreno (Director of Marketing) and the Cyclistic Executive Committee. The best way to communicate with them is through a high-level, polished slide presentation accompanied by an interactive Tableau dashboard. They care about high-level strategic takeaways, revenue potential, and actionable recommendations, not complex code. Technical data cleaning steps should be kept in the appendix.


#### 5.	Can data visualization help you share your findings? [1]

**•	What to write**: Yes. Visualizations are essential to make over 5.6 million rows of data instantly understandable. Instead of looking at raw numbers, the executive team can use charts to immediately spot patterns:

o	A **dual-line chart** clearly highlights the opposing weekday vs. weekend patterns.
o	A **stacked bar chart** demonstrates how casual riders dominate the summer months.
o	A **side-by-side bar chart** shows the massive difference in trip durations


#### 6.	Is your presentation accessible to your audience?

**•	What to write**: 

Yes. To ensure accessibility, the presentation and Tableau dashboard utilize high-contrast color palettes that are color-blind friendly (avoiding overlapping red/green indicators). All charts include clear, descriptive titles, properly labeled axes with units (e.g., "Trip Duration in Minutes"), and visible data labels to remove any ambiguity.


## Deliverable Summary

When you submit this phase, structure your document or presentation slide notes using this clean layout:

### •	Executive Summary: 

A 3-sentence summary stating that members ride for utility (weekdays, fast trips) while casuals ride for leisure (weekends, long summer trips).

### •	Key Findings (The Evidence):

**o	Volume**: Members make up the majority of total trips, but casuals peak on weekends.
**o	Duration**: Casual riders consistently maintain double the average ride length of members.
**o	Seasonality**: Casual riding is heavily weather-dependent, spiking dramatically in July.



## Phase 6: Act

*The analysis of 5.6 million clean bike trips proves that annual members
and casual riders operate on two completely distinct user models.*

Annual Members

Casual Members


### **Conclusion**

The analysis of **5.6 million trips** concludes that annual members and
casual riders use Cyclistic bikes for entirely different purposes.
**Annual members (64.13%)** and **Casual riders (35.87%)** This analysis
evaluates a full year of bike-sharing dataset trends, comparing the
behavioral patterns of Annual Members and Casual Riders. The final
results reveal two distinct consumer segments: Members use the service
as a functional, daily utility for workplace commuting, while Casual
Riders use it as a flexible, weather-dependent leisure activity.

### **Key Findings**

1.  **Trip Volume vs. Duration ParadoxMembers account** for the highest
    volume of individual trips, but their rides are consistently short
    (average 10--13 minutes).Casual Riders take fewer individual trips
    overall, but their trip duration is significantly longer (often
    double or triple that of members, averaging 25--30+ minutes).

2.  **Weekly & Hourly Rush PatternsMembers peak** heavily from Monday to
    Friday during traditional commute hours (08:00 AM and 05:00 PM).
    Their weekend volume drops.Casual Riders dominate the weekend
    (Saturday and Sunday), with trip volumes building steadily
    throughout the afternoon, peaking between 02:00 PM and 04:00 PM.

3.  **Extreme Weather SeasonalityCasual ridership** is highly volatile
    and climate-dependent. It peaks dramatically in summer (July and
    August) and drops close to zero during cold winter months (January
    and February).Member ridership is resilient. While it decreases in
    winter, a baseline volume of members continues to use the bikes for
    routine transit year-round.

-   **Trip Durations:** Casual journeys average 19.65 minutes, nearly
    doubling the 11.98-minute average of members.

-   **Peak Rush Hours:** Members spike at 8:00 AM and 5:00 PM weekdays;
    casual traffic builds steadily on weekend afternoons.

-   **Busiest Service Days:** Thursday is the peak day for members,
    whereas Saturday heavily dominates for casual riders.

-   **High Seasonality:** Casual demand is highly climate-dependent,
    surging drastically from June to August and bottoming out in
    January.

-   **Bike Preferences:** Electric bikes are the top choice overall.


### **Recommendations & Suggestions**


-   **Launch a \"Weekend Warrior\" Membership:** Create a seasonal or
    weekend-only annual subscription pass to target leisure users
    directly.

-   **Deploy Value-Based App Notifications:** Send casual riders push
    notifications showing how much they would save by upgrading.

-   **Run Geofenced Summer Campaigns:** Target casual users via digital
    ads near parks and tourist corridors from June to August.

-   **Optimize Saturday Fleet Layouts:** Position classic and electric
    bikes at high-demand recreational stations on Friday nights.

-   **Introduce Gamified Milestone Rewards:** Offer casual riders app
    badges or ride discounts for completing longer summer weekend
    routes.

