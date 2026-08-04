# HOW TO INSTALL TABLEAU PUBLIC DESKTOP

Installing Tableau Public Desktop is a straightforward process that does not require a paid license key. 

### Step 1: Download the Installer

1.	Visit the official [Tableau Public Download](https://www.tableau.com/products/public/download)

2.	Enter your email address in the provided field and click Download the App.

3.	The website will automatically detect your operating system and begin downloading the appropriate .exe file (for Windows) or .dmg file (for Mac). 

### Step 2: Run the Installation

#### For Windows:

•	Locate the downloaded file (usually in your "Downloads" folder) and **double-click** it.

•	Check the box to **accept the license agreement**.

•	(Optional) Click Customize to change the installation location or disable desktop shortcuts.

•	Click Install. You may need to grant administrator approval when prompted.

#### For Mac:

•	Open the **Disk Image (.dmg)** file and double-click the **Installer Package (.pkg).**

•	Follow the guided prompts to complete the installation.

•	If you see a security warning about "malicious software," 

Go to **System Preferences** > **Security & Privacy** 

Click **Allow** for Tableau.


### Step 3: Registration and First Launch

1.	Once installation is complete, **launch Tableau Public** from your Start menu or Applications folder.

2.	A registration form will appear. Fill in your details (name, business email, country) and

3.	Click **Activate Tableau** to register your free copy.

4.	You can now start creating visualizations by connecting to data sources like Excel or Google Sheets.




## 1. Data Uploading & Combining

*To combine multiple CSV files from a single folder into Tableau Public Desktop, you should use the **Wildcard Union** feature. This allows you to stack important files from 18 files into one single data source automatically, provided they have the same column structure. As I already merged the importnat files into single files for data visualization*


### Uploading

Step-by-Step Upload Process


#### 1.	Connect to the File:

•	Open Tableau Public Desktop.

•	Under Connect, select Text File.

•	Navigate to your folder and select important files from the 18 CSV files.

This is the most critical phase of the Bellabeat case study. Since we have combined the **940 rows** of activity, **413 rows** of sleep, and **67 rows** of weight data, our story is now about Visualization & Findings, Consistency and Correlation.





#### 2.	Open the Union Dialog:

•	In the Data Source tab, look at the left pane where your file is listed.

•	Double-click the New Union option located just below your connections.


#### 3.	Configure Wildcard Search:

•	In the Union dialog box, click the Wildcard (automatic) tab.


#### 4.	Apply and Verify:

•	Click OK. Tableau will now append all matching CSV files into a single table.

•	You will see a new column automatically created called Table Name or Path, which helps you identify which file each row of data came from. 


## 2.  Data Combining

Alternative: Manual Combination

If the wildcard method feels complex, you can also:

•	Drag and Drop: Drag the first file to the canvas, then drag the other 11 files directly underneath the first one until you see the "Union" orange box.

•	Command Line (Windows): If you prefer a single file, open the command prompt in that folder and type copy *.csv combined.csv to merge them before importing into Tableau.


## 3. Data Cleaning

Handling 5 million rows in Tableau Public is a significant task, as the software typically performs best with datasets up to 15 million rows. To manage this volume efficiently and clean your data, you should use 

**1. Data Source Filters**
**2. Calculated Fields** 

to reduce the load before you start building visualizations. 


### 1. Data Source Filter

Remove Null Values

To remove rows with null values globally across your entire workbook:

1.	**Data Source Filter**: In the **Data Source** tab (top right), click **Add** under the Filters section.

2.	Select the field containing nulls (e.g., ride_id or started_at).

3.	In the filter dialog, select **Null** and check the **Exclude** box. This ensures those rows never even enter your active workspace, improving performance


### 2. Calculated Fields or Create Measures

Since Tableau does not have a native "duration" data type, follow these steps to manually calculate total minutes:

1.	Create a Calculated Field: Go to Analysis > Create Calculated Field.

2.	Enter the Formula: Use the following calculation to split the string and convert hours and seconds into minutes:

If Tableau has already recognized your ride_length as a Date/Time field (showing a calendar icon), use this shorter formula
 

## 4. Data Analyze


- **Activity on Weekdays**

- **Distance by Users**

- **Total Steps in Weekday**

- **Total Calories in Weekday**

- **Average Calories by Activity Date**

- **Total Calories Burn by Tracker Distance**

- **Average Weight by Date**

- **Average Weight BMI**

- **Very Active Minute**

- **Active Sleep by Wednesday**


### ● Where you able to answer the business questions? 

Yes. By merging the datasets, we identified how activity levels directly impact sleep quality and weight trends, which helps define a marketing strategy for Bellabeat products.


### ● What story does your data tell?

The data tells a story of "The Active-Rest Gap." Most users are highly active but fail to meet sleep or weight-logging consistency. There is a clear drop-off in data logging as the "effort" of the task increases (from 940 activity logs to only 67 weight logs).


### ● How do your findings relate to your original question?

The findings from your data combination directly address the original business task: identifying trends in smart device usage to inform Bellabeat’s marketing strategy.

#### 1. Identifying Smart Device Trends

The original question asked for trends in how people use trackers. Your analysis revealed a "Sedentary Majority" trend:

**•	Finding**: Despite being "active" users, sedentary time accounts for roughly 81% of the daily record (averaging over 15 hours).

**•	Relevance**: This shows that users are primarily using trackers to monitor their daily routines rather than dedicated high-intensity fitness sessions


#### 2. Applying Trends to Bellabeat Customers

The question asked how these trends apply specifically to Bellabeat’s female audience.

**•	Finding**: Your data combination showed a massive drop-off in manual logging (940 activity rows vs. only 67 weight logs).

**•	Relevance**: Bellabeat customers value "beautifully-designed" products that fit into their lifestyle. The data suggests they are more likely to engage with automated features (like the Ivy tracker) than those requiring manual data entry.



#### 3. Influencing Marketing Strategy

The final objective was to use these insights for growth opportunities.

**•	Finding**: You found a positive correlation between Steps and Calories but a negative correlation between Sedentary Time and Sleep Quality.

**•	Relevance**: This directly informs two marketing "hooks":
      
**- Gamification**: Use step-based rewards to drive calorie burn.

**- The "Active-Rest" Bridge**: Market the app as a tool to reduce sedentary time specifically to improve sleep, a key health pillar for women


### ● Who is your audience? What is the best way to communicate with them?

The Bellabeat Executive Team. The best way to communicate is through high-level visual summaries (Tableau) followed by actionable business recommendations.


### ● Can data visualization help you share your findings?

Yes, data visualization is essential for the Share phase of your Bellabeat project. It transforms your combined datasets into a compelling narrative that stakeholders can understand at a glance.

### Here is how visualization specifically helps you share your findings:

**•	Reveals Hidden Patterns**: Raw numbers often hide the fact that your users spend 81% of their day sedentary. A bar or pie chart makes this "Active-Rest Gap" immediately obvious.

**•	Simplifies Complex Comparisons**: Instead of explaining the relationship between 940 activity rows and 413 sleep rows, a scatter plot can instantly show the positive correlation between active minutes and sleep quality.

**•	Identifies Peak Times**: A line graph clearly highlights that users are most active between 5 PM and 7 PM, providing a "data-backed" reason for Bellabeat to send push notifications during those hours.

**•	Bridges the Gap for Stakeholders**: Your audience (the executive team) may not have time to review your Power Query steps. Visualizations provide them with high-level insights without requiring technical expertise.

**•	Highlights Data Gaps**: A simple count visualization can show the massive drop-off from activity tracking to manual weight logging, supporting your recommendation to automate more features.
Best Visuals for your Bellabeat Story:

**•	Scatter Plots**: For showing correlations, like Steps vs. Calories.
**•	Bar Charts**: To compare activity levels or sleep duration across different days.
**•	Pie Charts**: To show the proportion of a user's day spent in different activity categories.


### ● Is your presentation accessible to your audience?

#### Accessibility & Final Presentation

**•	Color Palette**: Use Bellabeat’s brand colors (pinks, soft teals) but ensure they are Color Blind Friendly.

**•	Clarity**: Ensure all axes are labeled (e.g., "Total Minutes" instead of "Sum of Pivot Field Values").

**•	The Big Idea**: End your presentation with one sentence: "Bellabeat should market itself not just as a tracker, but as a 'Habit Automator' that bridges the gap between activity and rest."


### Key Findings (The "High-Level Insights")

**1.	The "Sedentary Majority"**: Despite being "active" users, the majority of the day is spent in the Sedentary category. Your Pie Chart will likely show that "Lightly Active" minutes dwarf "Very Active" minutes.

**2.	The Sleep Sync**: By joining the files, we find a correlation: Users who reach 10,000 steps tend to have more "Time in Bed" but not necessarily better "Sleep Quality."

**3.	Logging Fatigue**: The massive drop from 940 records (automatic tracking) to 67 records (manual weight input) shows that users hate manual entry.



## 5. Data Share

- Dashboard link:

[Dashboard](https://public.tableau.com/app/profile/satish.kumar6456/viz/GoogleDataAnalyticsCaseStudy2BellabeatProjectDashboard/Dashboard1)

  




