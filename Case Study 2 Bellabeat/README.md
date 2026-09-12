# Google Data Analytics Capstone Project: Bellabeat

### Case Study: How Can a Wellness Technology Company Play It Smart?

![image](https://bellabeat.com/wp-content/uploads/2023/09/Bellabeat-logo.jpg)


### **Project Overview**

Welcome to the Bellabeat data analysis case study. This case study is the Capstone Project of Google Data Analytics Professional Certificate. This project follows the structured data analysis process (Ask, Prepare, Process, Analyze, Share, and Act) to answer the key business questions of Bellabeat, a high-tech manufacturer of health-focused products for women.


#### The Scenario

I am working as a Junior Data Analyst at Bellabeat, a health-focused smart device company for women. My task is to analyze consumer smart device fitness data to unlock new global growth opportunities. This will present our insights and marketing recommendations to the executive team.


#### Key Stakeholders & Entities

- **Urška Sršen**: Cofounder and Chief Creative Officer.

- **Sando Mur**: Cofounder, mathematician, and executive team member.

- **Marketing Analytics Team**: Your team, responsible for data-driven marketing strategy


### Products:

- **Bellabeat App**: The central hub tracking activity, sleep, stress, menstrual cycles, and habits.

- **Leaf**: A classic wellness tracker worn as a bracelet, necklace, or clip.

- **Time**: A traditional-looking wellness watch with smart tracking features.

- **Spring**: A smart water bottle that monitors daily hydration levels.

- **Bellabeat Membership**: A subscription service offering personalized 24/7 health and wellness guidance



### **About the Company**

Founded in 2013 by Urška Sršen and Sando Mur, Bellabeat is a tech-driven wellness company that designs beautiful smart products for women. The company collects data on activity, sleep, stress, and reproductive health to empower women with deeper insights into their daily habits.

By 2016, [Bellabeat](https://bellabeat.com/) expanded globally, selling its products through its own e-commerce website and multiple online retailers. While the company utilizes traditional advertising like TV and billboards, its primary focus is digital marketing. Bellabeat invests year-round in Google Search, maintains highly active social media channels (Facebook, Instagram, and Twitter), and runs video and display ad campaigns on YouTube and the Google Display Network.


#### Business Objectives¶

1. What are some trends in smart device usage?

- e.g., peak activity times, average sleep duration, or common sedentary periods).

2. How could these trends apply to Bellabeat customers?

- e.g., do Bellabeat’s target female users likely share these habits.

3. How could these trends help influence Bellabeat marketing strategy?

- e.g., using data to personalize app notifications or design targeted campaigns.


There are 6 Phases

1. Phase 1: **Ask**
2. Phase 2: **Prepare**
3. Phase 3: **Process**
4. Phase 4: **Analyze**
5. Phase 5: **Share**
6. Phase 6: **Act**


## Phase 1: Ask
*The goal is to analyze smart device usage data in order to gain insights into how consumers use non-Bellabeat Smart Devices.*


### **Case Study Roadmap** - Ask 


Guiding questions


### ● What is the problem you are trying to solve?


**Problem Statement**

The core problem is that Bellabeat needs to better understand how consumers engage with smart devices in their everyday lives to unlock new growth opportunities. Currently, the company needs to bridge the gap between general consumer behavior (found in non-Bellabeat data) and their own product marketing. By identifying these external trends, I am solving the problem of how to position Bellabeat products more effectively in a competitive global market.


### ● How can your insights drive business decisions?


**Impact on Business Decisions**

Insights from this data will drive business decisions in three key ways:

1.	**Product Positioning**: If the data shows high sedentary behavior during work hours, Bellabeat can market the Leaf or Time as a tool for "desk-break" reminders.

2.	**Digital Strategy**: If activity peaks on weekends, the marketing team can schedule social media ads or app notifications for those specific high-engagement times.

3.	**Membership Value**: Insights into sleep or stress patterns can help the executive team decide which personalized content to prioritize for the Bellabeat subscription service.



### Key tasks
 

● Identify the business task

The goal is to analyze FitBit consumer data to identify trends in smart device usage. These insights will reveal how consumers use non-Bellabeat devices in their daily lives, which will then be applied to one Bellabeat product to help the executive team refine their global marketing strategy.



● Consider key stakeholders

**Urška Sršen**: Cofounder and CCO; needs insights to drive creative and marketing direction.

**Sando Mur**: Cofounder and Executive Team member; interested in the mathematical/data-driven growth opportunities.

**Marketing Analytics Team**: Your peers who will help integrate these findings into broader campaigns.

**Me**: as a Junior Analyst



### Deliverable

● A clear statement of the business task

*"The business task is to identify and analyze consumer usage trends from non-Bellabeat smart devices to uncover health and wellness patterns. These findings will be used to provide high-level recommendations for Bellabeat’s marketing strategy, specifically aimed at improving product positioning for women by aligning Bellabeat's features with real-world consumer habits."*

#### Noted

*Before jumping to the next phase you can check more insights on my Kaggle page*

[Google Data Analytics Capstone Project: Bellabeat using Python](https://www.kaggle.com/code/satishkr93/google-data-analytics-capstone-project-bellabeat)

## Phase 2: Prepare

*To move into the **Prepare** phase, we need to evaluate the quality and structure of the FitBit dataset to ensure your analysis is reliable*.


### **Case Study Roadmap - Prepare** 


Guiding questions


### ● Where is your data located?


**Data Location**

The data is stored in the [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit) on Kaggle.


**Download Link**

Download the most recent consecutive annual data here (which will be 12 files):

[FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit)


**Data Selection**

[Dataset Path](https://www.kaggle.com/code/satishkr93/google-data-analytics-capstone-project-bellabeat)


### Data Storage

The individual monthly .CSV files will be easily downloaded, unzipped, and stored locally in a secure, organized folder structure before being imported into the chosen analysis tool (e.g., Excel, SQL, MS Power BI, Tableau, R or Python) for consolidation and processing.

The data is stored in CSV files. Each file contains one month data. Thus, a total of 18 .CSV files.


### ● How is the data organized?

**Data Organization and Structure**

It is in a long format across 18 CSV files, tracking daily, hourly, and minute-level metrics.

• Storage: 18 CSV files containing wide and long format data.

• Content: Daily activity, steps, calories, heart rate, and sleep monitoring.

• Sample Size: 33 Fitbit users (consented).

• User ID: It is structured in a long format (each row is a point in time per user ID)

• Generated by respondents from a distributed survey via: Amazon Mechanical Turk

• Time Period: Between 12 April 2016 to 12 May 2016.


- **Key columns relevant to the analysis include: Total 13 Columns**

Data Files- 18 CSV

•	dailyActivty_merged.csv

•	dailyCalories_merged.csv

•	dailyIntensities_merged.csv

•	dailySteps_merged.csv

•	heartrate_seconds_merged.csv

•	hourlyCalories_merged.csv

•	hourlyIntensities_merged.csv

•	hourlySteps_merged.csv

•	minuteCaloriesNarrow_merged.csv

•	minuteCaloriesWide_merged.csv

•	minuteIntensitiesNarrow_merged.csv

•	minuteIntensitiesWide_merged.csv

•	minuteMETsNarrow_merged.csv

•	minuteSleep_merged.csv

•	minuteStepsNarrow_merged.csv

•	minuteStepWide_merged.csv

•	SleepDay_merged.csv

•	weightLogInfo_merged.csv

**Focus on limited data files**

•	dailyActivty_merged.csv

•	SleepDay_merged.csv

•	weightLogInfo_merged.csv

•	hourlyCalories_merged.csv

•	hourlyIntensities_merged.csv

•	hourlySteps_merged.csv



### ● Are there issues with bias or credibility in this data? Does your data ROCCC? 


**Data Credibility and Bias Assessment (ROCCC)**

Perform a **ROCCC** analysis

**1. Reliable**: Low (only 33 users).

**2. Original**: Low (third-party data via Amazon Mechanical Turk).

**3. Comprehensive**: Medium (includes steps, heart rate, and sleep).

**4. Current**: Low (data is from 2016 only).

**5. Cited**: High (well-documented on Kaggle).


Overall, the dataset is considered bad quality data and it is not recommended to produce business recommendations based on this data.


#### **Potential Biases/Limitations:**

In this phase, we find the **limitations** in this dataset to be:

•	Data was collected only **2 months April & May in 2016**, so users’ daily activity, fitness and sleeping habits, diet and food consumption may have changed since then.

•	The sample size of **33 users** is not representative of the entire fitness population. A larger sample size would be preferred.

•	A lot of the data was recorded from **Tuesday to Thursday**, which may not be comprehensive enough to form an accurate analysis


### ● How are you addressing licensing, privacy, security, and accessibility? 


By checking for missing values, duplicate IDs ensuring unique user IDs, and verifying that the data remains consistent across different tables.


**Licensing, Privacy, Security, and Accessibility**

**•	Licensing**: The data is under a CC0: Public Domain license, meaning it can be used, modified, and distributed without asking permission.

**•	Privacy**: The data has been anonymized. There are no names, emails, or addresses; users are identified only by a unique Numeric ID.

**•	Security**: The data is stored in a secure local environment or protected cloud folder. Since it is public data, there are no proprietary risks, but data integrity is maintained by keeping an "original" folder and a "working" folder.

**•	Accessibility**: The data is provided in CSV format, which is an open, machine-readable standard accessible to anyone using Excel, SQL, or R/Python.




### ● How did you verify the data’s integrity? 

**•	Unique Users**: I will check the Id column to ensure there are at least 30 unique users (Duplicate Rows in Excel using n_distinct () in R or DISTINCT in SQL).

**•	Data Types**: I will verify that date columns are in date format and numeric columns (like steps and calories) are in int or float format.

**•	Consistency**: I will cross-reference the dailyActivity file with specific files (like dailySteps) to ensure the totals match across different tables




### ● How does it help you answer your question? 

The dataset provides specific metrics—**TotalSteps, SedentaryMinutes, and MinutesAsleep**—that act as proxies for "behavior." By analyzing these, I can identify when people are most active and where they struggle to meet health goals. These behaviors can then be mapped to Bellabeat’s features, like the Leaf’s activity tracking and the App’s personalized guidance.



### ● Are there any problems with the data? 

•	**Small Sample Size**: 30 users is the bare minimum for statistical significance; findings are "directional" rather than definitive.

•	**Gender Bias**: Bellabeat is for women, but we don't know the gender of these 30 users.

•	**Data Decay**: The data is from 2016. Trends in wearable usage have changed since then (e.g., more focus on mental health and blood oxygen today).

•	**Inconsistency**: Some users have data for every day of the month, while others only have a few days, leading to potential "sampling bias."




### Key tasks

● Download data and store it appropriately.

Save the CSVs in a secure, organized folder system.


● Identify how it’s organized.

Determine which files are essential (dailyActivity_merged.csv, sleepDay_merged.csv).


### ● Sort and filter the data.

Sorting and Filtering the Data to check the correct format columns and Duplicate values.


● Determine the credibility of the data

The data is not highly credible for making definitive business decisions. However, it is sufficient for identifying general trends and practicing the data analysis process.



### Deliverable

● A description of all data sources used

"The primary data source is the **FitBit Fitness Tracker Data** made available through Mobius on Kaggle. It consists of 18 CSV files tracking the habits of 33 users over a 30-31-day period. While it provides deep insights into a daily activity and sleep, limitations include a small, gender-anonymous sample and potential ‘recency’ bias due to the 2016 collection date”.

Next phase is to start processing the data using **EXCEL, or R-Studio or Python and Big Query SQL** to check for duplicates and missing values.




## Phase 3:  Process

*combining the files into 1 for data transformation and cleaning.*


### Case Study Roadmap - Process


Guiding questions 


### ● What tools are you choosing and why? 

Excel is used for the initial "Prepare" inspection and initial data cleaning and transformation steps, but it **cannot handle the combined volume of 18 csv of data** (which typically exceeds rows & columns). SQL/R allows for efficient merging (UNION), handling of null values, and complex transformations and other data insights which is easier to analysis for further but complex for the MS-Excel Power Query Editor.


**Data Information**

Unzip all 18 data Files into CSV
Dataset 2 Months: **April to May** with same Year 2016
Total Count of Rows in dailyActivity_merged.csv: **940 rows**


Tools Used: **MS-Excel and Power Query Editor**


### ● Have you ensured your data’s integrity? 


**To maintain integrity during processing**:

•	Verified that Id remains the primary key (duplicates, irregular, missing, null values).

•	Common Column in data set (Id and ActivityDate is the common in every dataset).



## MS-Excel & Power Query Editor


### ● What steps have you taken to ensure that your data is clean? 


## Data Cleaning & Transformation Steps


#### A.	Data Consolidation/Collecting

•	Unzip 18 individual files into CSV files and stored into new folder.
•	Focus on the limited data and check the number of rows and columns format.



#### B.	Data Organization & Naming the Folder name


On our Desktop or Drive, create a main project folder. 

Follow these naming conventions (no spaces, use underscores, be descriptive):

•	**Main Folder**: Bellabeat_Case_Study
•	**Sub-folder 1**: Data Combining



#### C.	Data Combining


• Open data folder in Excel & Launch into Power Query Editor for data cleaning.


**Import the folder of 18 csv files into Power Query Editor**


### ● How to Open 18 csv file from the folder Power Query Editor? 

Excel github link


• Load and Combine the 18 Files

• Added as New Query: 3 important CSV for Data Cleaning and Transformation for analysis


#### D. Data Transformation & Cleaning

• 1. Correct the Date Format Column

• 2. Create new column Day of the week

• 3. Merge or Join Table: **Left Outer**



### ● How can you verify that your data is clean and ready to analyse? 

 **Verification of Cleanliness**


•	Check DISTINCTCOUNT(Ids)to ensure no duplicates.

•	Check no duplicate columns like ActivityDate.

• Total 3 Duplicate values found and removed: 940 unique Ids with rows remains.




### ● Have you documented your cleaning process so you can review and share those results?


### Results

**940 rows** found with unique Ids with duplicate rows



### ● Key tasks


● Check the data for errors.

Change the DATE FORMAT: correct the DATE FORMAT in power query editor

Remove Bad Data Columns: remove unnecessary columns
MERGE OR JOIN TABLE: Left Outer Join for data analysis. 
ADD NEW Columns: add weekday columns as Day name (1= Sunday, 7= Saturday)

Duplicate values: remove duplicate values.


● Choose your tools.

**Data Collecting**: MS-Excel

**Data Exploration**: MS-Excel & Power Query Editor

**Data Combining**:  MS-Excel Power Query Editor (Big-Query SQL, R)

**Data Transformation**: MS-Excel Power Query Editor (Big Query-SQL, R)

**Data Cleaning**: MS Excel Power Query Editor (Big Query-SQL, R)

**Data Statistics and Insight**: (Big-Query SQL, R)

**Data Visualization**: Big Query SQL, R, MS Power BI and Tableau



● Transform the data so you can work with it effectively.

For Data Combing and Data Transformation **MS Excel Power Query Editor** is the easiest and simple process to organized the data.

Other Options to transform the 18 data csv files: **Big Query SQL & R-Studio**



● Document the cleaning process

For Data Cleaning **Query Editor** and **R-Studio** is the best option.




### Deliverable
 
● Documentation of any cleaning or manipulation of data

Query Editor used to combine/merge the various datasets into one dataset and clean it



## Phase 4: Analyze

*after data processing, combining & extraction all 18 files into 1 file and stored the data after data transformation and cleaning. Now start analysis as per instructions and requirement.*

### Case Study Roadmap - Analyze


Guiding questions 

### ● How Should you organize your data to perform analysis on it? 

Once we have combined and cleaned some important CSV files into a single master file, we should organize our data according to the requirement to ensure it is optimized for analysis across MS Excel Power Query Editor, Big Query SQL, and R Studio.

Data Cleaning Table name and Total number of Rows

•	**MS Excel Power Query Editor**: 940 rows

•	**Big Query-SQL**: 940 rows

•	**R Studio**: 940 rows

##### Unique users count

![distinct](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/Unique%20users%20count.png?raw=true)

##### Total number of rows

![Total rows](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/0.png?raw=true)

Statistics Analysis:  **MS Excel Pivot Table, BIG Query SQL, R Studio**

Visualization: **R Studio and Tableau**

![General Statistics](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/1.png?raw=true)

### ● Has your data been properly formatted? 

In Process phase all the data formatted correctly as per given instructions and ready for the Analyze Phase for Statistics and Visualization.


### ● What surprise did you discover in the data?

Based on the instructions the data calculation done by 2 methods

**1.	Statistics**
**2.	Visualization**

##### Activity Day of week

![Activity Day of week](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/2.png?raw=true)

##### Activity Percentage Share

![Activity Percentage Share](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/3.png?raw=true)


##### A. Average Total Steps by Day of week

![Bar Graph](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/4.png?raw=true)

##### B. Average Moderate Activity in Minute by Day of Week

![Bar Graph](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/5.png?raw=true)

#### Visual Results¶

**Step Volume**: Plot A (TotalSteps) tracks the absolute volume of movement

The spike in moderate activity on Saturdays suggests that users utilize their free weekend time for intentional workouts, outdoor walks, or sports, rather than incidental movement.

**Weekend Peak**: Users show a distinct behavioral shift during the weekends (Saturday and Sunday). Saturday, in particular, emerges as the peak day for moderate physical intensity (FairlyActiveMinutes).

##### C. Daily Min vs Min Asleep

![Min Asleep](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/6.png?raw=true)

#### Visual Results:¶

**Direction of Relationship**: The red linear regression line (method = "lm") shows the overarching trend between physical activity and sleep duration.

a) If the red line slopes downward, it indicates a negative correlation (more steps relate to less sleep).

b) If it slopes upward, it indicates a positive correlation (more steps relate to better/more sleep).

c) If it is flat, there is no linear relationship between daily steps and minutes asleep.

**Data Density and Variation**: The individual blue points (geom_point) show individual daily logs. 

The spread of these points reveals how much variation exists—

For example, if users who take 10,000 steps have wildly different sleep times, the relationship is weak.

**Outlier Identification**: The plot instantly exposes behavioral anomalies, such as days with high step counts but minimal sleep, or sedentary days with excessive sleep.


##### D. Sedentary vs Active

![Sed vs Act](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/7.png?raw=true)

#### Visual Results¶

**Time Trade-Off (Inverse Relationship)**: The plot visualizes the direct trade-off in a user's daily budget of time. You will likely observe a negative trend where higher VeryActiveMinutes correspond to lower SedentaryMinutes.

**User Clustering**: The density of the green points (geom_point) shows where most users fall. Typically, a high concentration of points near the top-left axis highlights a heavily sedentary lifestyle, with very few minutes spent in high-intensity activity.

**The "Active Sedentary" Phenomenon**: The plot identifies outliers—such as users who have high sedentary times but still manage to log significant active minutes. This reveals that intense workouts and prolonged sitting can coexist in a single day.


##### E. Distribution of Total Sleep Time

![Dis Total Sleep Time](https://github.com/SatishKumar-ds93/Google-Data-Analytics-Capstone-Project/blob/main/Case%20Study%202%20Bellabeat/Imgaes/8.png?raw=true)

#### Visual Results:

**The 7-Hour Goal Benchmark**: The vertical dashed line at 420 minutes serves as a clear visual baseline for healthy sleep (7 hours).

**Concentration of Sleep Data**: Because the subtitle notes that "most users are reaching the 7-hour sleep goal," the histogram bins peak to the right of the 420-minute line. This indicates a normal distribution centered around 7 to 8 hours of sleep.

**Sleep Deficit Identification**: Bins to the left of the dashed line clearly isolate the volume of logs where users fall short of recommended sleep durations, exposing potential chronic fatigue trends.



#### Noted

*To know more insights go to my Kaggle page*

[Google Data Analytics Capstone Project: Bellabeat using Python](https://www.kaggle.com/code/satishkr93/google-data-analytics-capstone-project-bellabeat)



## Phase 5: Share

*Once we have completed our analysis, I create the data visualizations on Tableau Public Desktop. The visualizations should clearly communicate the high-level insights and recommendations.*


### Case Study Roadmap - Share


### **Dashboard: Tableau Public Link**

[Dashboard](https://public.tableau.com/app/profile/satish.kumar6456/viz/GoogleDataAnalyticsCaseStudy2BellabeatProjectDashboard/Dashboard1)
Guiding questions 

### 1. Where you able to answer the business questions? 

Yes. By merging the datasets, we identified how activity levels directly impact sleep quality and weight trends, which helps define a marketing strategy for Bellabeat products.


### 2. What story does your data tell?

The data tells a story of "The Active-Rest Gap." Most users are highly active but fail to meet sleep or weight-logging consistency. There is a clear drop-off in data logging as the "effort" of the task increases (from 940 activity logs to only 67 weight logs).


### 3. How do your findings relate to your original question?**

The findings from your data combination directly address the original business task: identifying trends in smart device usage to inform Bellabeat’s marketing strategy.

**1. Identifying Smart Device Trends**

The original question asked for trends in how people use trackers. Your analysis revealed a "Sedentary Majority" trend:

•	**Finding**: Despite being "active" users, sedentary time accounts for roughly 81% of the daily record (averaging over 15 hours).

•	**Relevance**: This shows that users are primarily using trackers to monitor their daily routines rather than dedicated high-intensity fitness sessions


**2. Applying Trends to Bellabeat Customers**

The question asked how these trends apply specifically to Bellabeat’s female audience.

•	**Finding**: Your data combination showed a massive drop-off in manual logging (940 activity rows vs. only 67 weight logs).

•	**Relevance**: Bellabeat customers value "beautifully-designed" products that fit into their lifestyle. The data suggests they are more likely to engage with automated features (like the Ivy tracker) than those requiring manual data entry.


3. Influencing Marketing Strategy

The final objective was to use these insights for growth opportunities.

•	**Finding**: You found a positive correlation between **Steps and Calories** but a negative correlation between **Sedentary Time and Sleep Quality**.

•	**Relevance**: This directly informs two marketing "hooks":

• **Gamification**: Use step-based rewards to drive calorie burn.

• **The "Active-Rest" Bridge**: Market the app as a tool to reduce sedentary time specifically to improve sleep, a key health pillar for women



### 4. Who is your audience? What is the best way to communicate with them?

The Bellabeat Executive Team. The best way to communicate is through high-level visual summaries (Tableau) followed by actionable business recommendations.


### 5.	Can data visualization help you share your findings? [1]

Yes, data visualization is essential for the **Share** phase of your Bellabeat project. It transforms your combined datasets into a compelling narrative that stakeholders can understand at a glance.

Here is how visualization specifically helps you share your findings:

•	**Reveals Hidden Patterns**: Raw numbers often hide the fact that your users spend 81% of their day sedentary. A bar or pie chart makes this "Active-Rest Gap" immediately obvious.

•	**Simplifies Complex Comparisons**: Instead of explaining the relationship between 940 activity rows and 413 sleep rows, a scatter plot can instantly show the positive correlation between active minutes and sleep quality.

•	**Identifies Peak Times**: A line graph clearly highlights that users are most active between 5 PM and 7 PM, providing a "data-backed" reason for Bellabeat to send push notifications during those hours.

•	**Bridges the Gap for Stakeholders**: Your audience (the executive team) may not have time to review your Power Query steps. Visualizations provide them with high-level insights without requiring technical expertise.

•	**Highlights Data Gaps**: A simple count visualization can show the massive drop-off from activity tracking to manual weight logging, supporting your recommendation to automate more features.


### Best Visuals for your Bellabeat Story:

•	**Scatter Plots**: For showing correlations, like Steps vs. Calories.
•	**Bar Charts**: To compare activity levels or sleep duration across different days.
•	**Pie Charts**: To show the proportion of a user's day spent in different activity categories.



### 6.	Is your presentation accessible to your audience?

**Accessibility & Final Presentation**

•	**Color Palette**: Use Bellabeat’s brand colors (pinks, soft teals) but ensure they are Color Blind Friendly.

•	**Clarity**: Ensure all axes are labeled (e.g., "Total Minutes" instead of "Sum of Pivot Field Values").

•	**The Big Idea**: End your presentation with one sentence: "Bellabeat should market itself not just as a tracker, but as a 'Habit Automator' that bridges the gap between activity and rest."


### Key Findings¶

- 16 Hours Sitting: Users spend 81% of their day sitting down (sedentary), mostly using the tracker for daily routines rather than gym workouts.

- Manual Typing Fatigue: Users hate manual typing. Automated logs have 940 rows, but manual weight logs drop to just 67 rows.

- The Sleep Gap: Walking more steps burns more calories, but it does not automatically guarantee better sleep quality.




## Deliverable Summary

When you submit this phase, structure your document or presentation slide notes using this clean layout:

### •	Executive Summary: 

A 3-sentence summary stating that members ride for utility (weekdays, fast trips) while casuals ride for leisure (weekends, long summer trips).

### •	Key Findings (The Evidence):

**- Volume**: Members make up the majority of total trips, but casuals peak on weekends.
**- Duration**: Casual riders consistently maintain double the average ride length of members.
**- Seasonality**: Casual riding is heavily weather-dependent, spiking dramatically in July.


### Deliverable: Supporting Visualizations

In Tableau, create these four specific charts to tell the story:

### A. The Activity Breakdown (Pie/Donut Chart)

**•	What it shows**: The ratio of Very, Fairly, and Lightly active minutes.

**•	Key Insight**: Users are "Lightly Active" most of the time.

**•	Recommendation**: Use "Bellabeat Ivy" to nudge users to turn "Light" activity into "Fairly Active" bursts.

### B. Steps vs. Calories (Scatter Plot)

**•	What it shows**: Put Total Steps on the X-axis and Calories on the Y-axis.

**•	Key Insight**: A clear positive correlation.

**•	Recommendation**: Use gamification in the Bellabeat app to reward hitting the 10,000-step threshold.

### C. Sleep Quality vs. Day of the Week (Bar Chart)

**•	What it shows**: Weekday on X-axis, Minutes Asleep on Y-axis.

**•	Key Insight**: Do users sleep less on Tuesdays vs. Sundays?

**•	Recommendation**: Personalized "Wind Down" alerts on nights where data shows the user typically gets less sleep.

### D.	Data Completion Funnel (Highlight Table)

**•	What it shows**: A visual count of Activity records (940) vs. Sleep (413) vs. Weight (67).

**•	Key Insight**: Manual tracking is a barrier.

**•	Recommendation**: Bellabeat should focus on automated weight syncing or easier UI to prevent "logging fatigue."



## Phase 6: Act


### **Conclusion**

The Bellabeat data analysis reveals that while users successfully prioritize intense workouts and healthy sleep durations on the weekends, they struggle with high sedentary time during weekday work hours. This structural imbalance presents a major opportunity for Bellabeat to transition from a passive tracker to an active wellness guide. By deploying smart, context-aware haptic alerts and mid-week prompts, Bellabeat can empower women to break up prolonged sitting and maintain consistent, healthy habits all week long.


### **Key Findings**

**1. The Sedentary Monopolization** Over 81% of the user’s day is entirely inactive, with SedentaryMinutes averaging 991.2 minutes (roughly 16.5 hours) daily.High-intensity exercise (VeryActiveMinutes) accounts for less than 2% of their routine, proving users spend most of their device-wearing time sitting down.

**2. The Low-Intensity Trap & Step Deficit** When users are physically moving, over 80% of their motion is light activity (LightlyActiveMinutes averages 192.8 minutes per day).The average user walks 7,637 steps per day, consistently falling short of the universally recommended 10,000 steps health benchmark.

**3. The "Twin Peaks" Hourly Traffic** user step activity is not evenly spread out; it relies on two distinct high-volume windows: 12:00 PM (Lunch hour) and 5:00 PM – 7:00 PM (After-work window).Outside of these narrow windows, physical movement drops significantly during standard working hours.

**4. The Sleep Efficiency Gap** There is a consistent 40 to 50-minute gap between TotalTimeInBed and TotalMinutesAsleep across almost all users.This visual proof demonstrates that users aren't just sleeping less; they are actively struggling with restlessness, taking a long time to fall asleep, or tossing and turning.

**5. The Sleep vs. Calories Myth** The user correlation between total sleep duration and daily calories burned is virtually non-existent (-0.07).Sleep duration alone does not predict physical performance, meaning Bellabeat should pivot its focus toward sleep quality and recovery habits rather than pushing users to simply log more sleep minutes.


### Core Analytical Insights:¶

**1. The "Weekend Warrior" Phenomenon:**

Data: Activity peaks sharply on Saturdays, both in total step volume and moderate-to-high intensity metrics (FairlyActiveMinutes and VeryActiveMinutes).

The Insight: Users are bound by structured, low-movement routines during weekdays (Monday to Friday) but actively dedicate their free weekend time to fitness, outdoor movement, or sport.2.

**2. The Active-Sedentary Paradox:**

Data: Scatter plots comparing high-intensity minutes against sedentary time show that intense workouts and prolonged sitting often coexist in the same 24-hour cycle.

The Insight: Hitting a daily step goal or logging a 30-minute run does not automatically shield a user from the health risks of sitting at a desk for 8 to 10 hours a day.

**3. Sleep vs. Step Interdependence:**

The Data:** The distribution of sleep time shows a healthy peak around the 7-to-8-hour mark (420+ minutes). However, correlation analysis between daily step counts and total minutes asleep indicates that extreme values on either end (being highly sedentary or excessively over-exercising) can destabilize consistent rest.


### **Recommendations & Suggestions**

**1. Software**: Dynamic "Micro-Incentive" App AlertsThe Strategy: Stop sending intimidating daily workout demands.The Execution: Leverage the user's natural habit of accumulating light movement. Use the app to celebrate "Active Distance Milestones" (e.g., crossing a 5K circle during standard errands) and push gentle, low-vibration inactivity nudges (e.g., "Time for a 2-minute stretch to refresh your day") to break up the 16-hour sedentary block.

**2. Marketing**: Target the Hourly "Twin Peaks" TrafficThe Strategy: Reach users exactly when they are biologically ready to move.The Execution: Launch smart app campaigns centered around "Mid-day Step Missions" or "Evening De-stress Walks." Program phone push notifications to trigger exactly 15 minutes before the dataset’s peak traffic windows (11:45 AM and 4:45 PM) to capture and build upon users' natural habits.

**3. Product Features**: Close the Sleep Efficiency GapThe Strategy: Pivot sleep marketing from basic duration (minutes) to actual nighttime recovery (quality).The Execution: Introduce a "Bedtime Mindfulness Wind-down" feature dashboard. When the tracker senses a user has been awake or restless in bed for more than 20 minutes, automatically offer guided breathing audio, ambient soundscapes, or hydration reminders to improve sleep latency.

**4. Hardware Ecosystem**: Automate Friction PointsThe Strategy: Remove manual data logging, which currently causes massive data scarcity (only 8 users logged weight).The Execution: Ensure the Bellabeat Leaf and Time watch lines focus 100% on automatic exercise recognition. Partner with or develop an elegant, white-labeled smart scale that automatically syncs body metrics directly into the app via Bluetooth, completely removing the frustration of manual typing.

**5. User Retention**: Proactive "Battery Guard" NotificationsThe Strategy: Eliminate "dead tracking days" caused by uncharged devices left on nightstands.The Execution: Program a high-value phone notification loop that triggers a gentle alert (e.g., "Your Leaf is at 12%—let's charge it while you shower so you don't miss your evening sleep streaks!") to maximize tracking consistency.
