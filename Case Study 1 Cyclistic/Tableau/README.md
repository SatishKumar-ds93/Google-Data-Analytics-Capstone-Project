# HOW TO INSTALL TABLEAU PUBLIC DESKTOP

Installing Tableau Public Desktop is a straightforward process that does not require a paid license key. 

### Step 1: Download the Installer

1.	Visit the official Tableau Public Download Page.

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

*To combine multiple CSV files from a single folder into Tableau Public Desktop, you should use the **Wildcard Union** feature. This allows you to stack all 12 files into one single data source automatically, provided they have the same column structure.*


### Uploading

Step-by-Step Upload Process


#### 1.	Connect to the First File:

•	Open Tableau Public Desktop.

•	Under Connect, select Text File.

•	Navigate to your folder and select any one of the 12 CSV files.


#### 2.	Open the Union Dialog:

•	In the Data Source tab, look at the left pane where your file is listed.

•	Double-click the New Union option located just below your connections.


#### 3.	Configure Wildcard Search:

•	In the Union dialog box, click the Wildcard (automatic) tab.

•	Include: Enter * to include all files in the folder, or a specific pattern like ride_data* if your files follow a naming convention (e.g., ride_data_Jan.csv, ride_data_Feb.csv).

•	Search in: Ensure it points to the correct folder.


#### 4.	Apply and Verify:

•	Click OK. Tableau will now append all matching CSV files into a single table.

•	You will see a new column automatically created called Table Name or Path, which helps you identify which file each row of data came from. 


## 2.  Data Combining

Alternative: Manual Combination

If the wildcard method feels complex, you can also:

•	Drag and Drop: Drag the first file to the canvas, then drag the other 11 files directly underneath the first one until you see the "Union" orange box.

•	Command Line (Windows): If you prefer a single file, open the command prompt in that folder and type copy *.csv combined.csv to merge them before importing into Tablea.


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

- **ride_length_min**

(DATEPART(‘hour’, [ride_length]) * 60) + (DATEPART(‘hour’, [ride_length]) * 60) +  (DATEPART(‘hour’, [ride_length]) / 60) 



If you want to create a "clean" version of your field without deleting the original data, create a calculated field. 

1.	Go to **Analysis** > **Create Calculated Field....**

2.	Name it Clean Ride Length.

3.	Enter the following formula:

IF [ride_length] > 0 THEN [ride_length] ELSE NULL END.

4.	Use this new Clean Ride Length field in your visualizations. Tableau will treat the zero and negative values as **Null**, which you can then easily hide by clicking the "unknown values" indicator in the bottom-right corner and selecting **Filter Data**.

IF [ride_length] > 0 THEN [ride_length] ELSE NULL END.


- **Filter Non-Zero values**

- **Day of Week**

- **Monthly wise COUNT for Casual and Member**

- **Mean or Calculate the Mean (Average) of Ride Length**

- **Mean or Calculate the Mean (Average) of Ride Length for Casual and Member**

- **Percentage Shared for Casual and Member**

- **Percentage Shared for Rideable Type (Bike Type)**

- **Calculate the Average Ride Length for Casual and Member by Day**

- **Calculate the Average Ride Length for Casual and Member by Day name**



## 5. Data Share

- Dashboard link:

[Dashboard](https://public.tableau.com/app/profile/satish.kumar6456/viz/GoogleDataAnalyticsCaseStudy1CyclisticBikeShareProjectDashboard/Dashboard1)

  



