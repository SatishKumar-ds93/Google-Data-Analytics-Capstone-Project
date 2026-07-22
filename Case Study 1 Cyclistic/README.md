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

##### ● What is the problem you are trying to solve?

**Problem Statement**

The core problem to solve is that while Cyclistic has strong general awareness and a healthy user base, annual members are significantly more profitable than casual riders (single-ride and full-day pass users). The company's future growth depends on maximizing these profitable annual memberships. Rather than seeking entirely new customers, the strategy focuses on converting existing casual riders who are already familiar with the service.

##### ● How can your insights drive business decisions?

**Impact on Business Decisions**

The insights gained from this analysis will directly drive the following business decisions:

•	**Marketing Strategy Design**: Understanding the differences in usage patterns (e.g., trip duration, time of day, day of week, start/end locations, bike types used) will allow the marketing team to segment casual riders.

•	**Targeted Messaging**: The findings will inform the creation of specific marketing messages that highlight the benefits most relevant to the "high-potential" casual rider segments (e.g., cost savings for frequent commuters, convenience for specific routes).

•	**Executive Approval**: The data insights and professional visualizations produced in the final report will be crucial for convincing the detail-oriented executive team to approve the proposed new marketing campaigns.
Key tasks
 
● Identify the business task

The business objective is to design marketing strategies aimed at converting existing casual riders into annual members to maximize company profitability and future growth.

The specific data analysis task assigned is to determine:
 
##### - “How do annual members and casual riders use Cyclist bikes differently?”

The findings from this analysis will serve as the foundation for answering the subsequent questions: "Why would casual riders buy Cyclistic annual memberships?" and "How can Cyclistic use digital media to influence casual riders to become members?"


● Consider key stakeholders

The following stakeholders have vested interests in the outcome of this analysis:

- Director of Marketing:	**Lily Moreno**	Needs data-driven insights to develop and justify a targeted marketing campaign for converting casual riders into members. She is the direct manager and primary audience for the initial report.

- Junior Data Analyst:	**Me**	Responsible for executing the analysis, producing reliable insights, visualizations, and recommendations to support the marketing strategy.

- Marketing Analytics Team:	N/A	The team collaborating on the project, using the analysis to guide the overall marketing strategy.

- Cyclistic Executive Team:	N/A	The final decision-makers who must approve the recommended marketing program. They require compelling, data-backed evidence and professional visualizations to sign off on new initiatives.

- Cyclistic Finance Analysts:	N/A	Provide the core business context that annual members are more profitable, which drives the entire project's premise.

This analysis will provide the necessary insights to move into the data preparation phase.



#### Deliverable

● A clear statement of the business task

*The business task assigned is to provide data-driven insights to help Cyclistic convert casual riders into annual members.*

## Phase 2: Prepare
*Google Sheets won't open files of these sizes. Excel is the only option to open the data.*

This document outlines the **Prepare** phase of the data analysis for the Cyclistic case study, addressing the guiding questions and key tasks specified in the roadmap using the provided divvy-trip data description.

### **Case Study Roadmap - Prepare** 

Guiding questions

● Where is your data located?

**Data Location & Acquisition**

The data used for this case study is Cyclistic's historical trip data, which has been made publicly available by Motivate International Inc.

**Download Link**

Download the most recent consecutive annual data here (which will be 12 files):

![Tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)

**Data Selection**

As per the case study instructions, I will use the previous 12 months of data (typically encompassing monthly zip files, for example, from Jan 2023 to Dec 2023, depending on the current date of execution) to capture recent trends and seasonality.

•	Unzip all 12 files.
•	Separate CSV data into another folder.
•	Total Count of Rows(ride_ID of 12 files): 5719896

**Data Storage**

The individual monthly .CSV files will be downloaded, unzipped, and stored locally in a secure, organized folder structure before being imported into the chosen analysis tool (e.g., Excel, RStudio, SQL, or Python) for consolidation and processing. 

The data is stored in CSV files. Each file contains one month data. Thus, a total of 12 .CSV files.

● How is the data organized?

**Data Organization and Structure**

The data is structured and organized into individual monthly CSV files. Each file represents a large table where every row is a single bike trip. The columns provide specific details about each ride. 

- Key columns relevant to the analysis include: Total 13 Columns

•	ride_id: A unique identifier for each trip.
•	rideable_type: The type of bike used (e.g., classic bike, electric bike, docked bike).
•	started_at: Datetime stamps for the start of the ride.
•	ended_at: Datetime stamps for the end of the ride.
•	start_station_name: Name of the start stations.
•	start_station_id: Start Stations ID
•	end_station_name: Name of the end stations
•	end_station_id: End Stations ID
•	start_lat: Latitudes Geographical coordinates for start mapping routes. 
•	start_lng: Longitudes Geographical coordinates for end mapping routes. 
•	end_lat: Latitudes Geographical coordinates for end mapping routes. 
•	end_lng: Longitudes Geographical coordinates for end mapping routes
•	member_casual: The primary variable identifying the user type as either "member" (annual) or "casual" (single/day pass).

● Are there issues with bias or credibility in this data? Does your data ROCCC? 

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





