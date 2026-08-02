## DATASBASE

To create a new dataset and import multiple CSV files from a folder in **Google Cloud Storage** into a single **Big Query** table, follow these steps:


### 1. Create the Dataset (Database)

In Big Query, "datasets" serve as the equivalent of a database.

**Step1**: Open the Big Query page in the Google Cloud console.

**Step2**: In the Explorer pane, click on your Project ID.

**Step3**: Click the three dots (View actions) next to your project and select Create dataset.

**Step4**: For Dataset ID, enter **cyclistic**.

**Step5**: Choose your Location type (e.g., Multi-region US). Note: Your data files in Cloud Storage must be in the same location as this dataset.

**Step6**: Click Create dataset.


•	Create the Database
 
•	Create the Dataset name: ‘cyclistic’
 
•	Dataset created: ‘cyclistic’
 


### 2. Import the 12 CSV Files

CREATE TABLE: Manual One-by-One Upload

**Step1**: Click your cyclistic dataset > Create Table.

**Step2**: Select Upload and pick the first CSV file from the source/folder

**Step3**: Name the table (we can rename the table) in my case 202301-tripdata and check Auto detect.

**Step4**: Click Create Table.

Once finished, click Create Table again for the second file and so on till all 12 CSV should be uploaded.

Syntax:  

SELECT
*
FROM
 `projectIDname.dataset.datatable`;



### For example: In my case

SELECT
*
FROM
 `serious-sylph-471104-q0.cyclistic.202301-tripdata`;


- Noted: put Backtick ( ` ) to complete the SQL identifiers code. It is on upper left keyboard near ESC button.

- Asterisk ( * ) used in SELECT * to select all

- Semicolon ( ; ) used for separate multiple SQL statements in script, block or interactive query.
Run apply after query ends.


### Check

- 1. Schema
 
- 2. Preview (Table view)
 
- 3. Table Explorer
 

**All 12 CSV uploaded (Table view)**
 


DATA COMBINING

