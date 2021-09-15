# GT Bootcamp
# Project 2:  https://github.com/ItsGreyedOut/Project-2 

# Project 2 ✍️ Team members and links to their personal GitHub sites to review thier portfolios:
Swapna Subbagari -  https://github.com/Subbagari1985 

John Clos -  https://github.com/johnclos 

Grey Hardy -  https://github.com/ItsGreyedOut

# 🧐 Topic:  The correlation of Indian food recipes and rainfall.

![alt text](http://github.com/itsgreyedout/project-2/blob/master/images/indianfood2.png?raw=true)

# Project 2 Description: 

India is one of the oldest civilizations in the world with a kaleidoscopic variety and rich cultural heritage. India has 15 major languages among 28 states. Each state has its own way of living including the food they eat, meat consumption, Different flavors and recipes which refine the palate for most of us. Food consumption also depends on the weather in the state. 

Let us do the ETL process and analyze the data to see if we can answer some of the questions like which part of India consumes more meat or dairy? What kind of flavors do the dry land states like the most? and so on.

# Datasets used:
Dataset 1: https://www.kaggle.com/sampannathapaliya/indian-fooddemographic-filtering

Dataset 2: https://www.kaggle.com/rajanand/rainfall-in-india

Dataset 3: State codes.xlsx

# Extract, Transform and Load (ETL) Process:
ETL is the process of Extracting data from the data files, Cleansing the data to improve data quality and Loading data into a target database.
As part of this project, We analyzed the data and extracted the data from the CSV and excel files. Applied Transformations to cleanse the data using Python and Pandas in Jupyter. After the data is cleansed loaded the datafiles as tables into Postgre SQL.

# Steps Involved in ETL process.
•	Extracted the rainfall data file and Indian food data file that are in CSV format using pandas.

•	Extracted the state codes from an excel file using pandas.

•	Filtered the rainfall data to show the annual rainfall for all states only for the year 2015.

•	Filtered the rest of the columns out from the rainfall dataframe except for the state and Annual rainfall.

•	Converted the state column values to upper case letters since the state names in state codes dataframe are in upper case.

•	Merged the Indian food and state codes information using pandas on state column to add the state codes to the Indian food dataframe.

•	Merged the Rainfall information and state codes information using pandas on state column to add the state codes to the Rainfall dataframe.

•	Dropped the duplicated state columns after the merge and renamed the columns appropriately.

•	Inorder to load the data, Used SQL Alchemy to create an engine to connect to Postgre database.

•	Converted the Indian food and Rainfall Databases to SQL and loaded them as tables in Postgre database.

•	Once the loading of the data is complete, Joined the Indian food and state rainfall information using sql on state code column. Refer to Merging_Datasets_query.sql in the repository.

•	Updated the data that did not have some values from ‘-1’ to ‘Not Available’.

•	Once the final table is merged and loaded, used SQL queries to analyze the data and come up with interesting facts.

•	As part of the analysis process, split the ingredients column into a separate table to query further and perform detailed analysis.

# Analysis:
•	Dataset consists of receipes that have unique list of flavors like sweet, spicy, sour and bitter among the unique list of meal types like Starter, main course, dessert and snack.

•	Most of the sweets or desserts in India are made of Jaggery since it is a healthy substitute for sugar and as per the Datafile, Out of 68 dessert recipes, only 15 are made of sugar.

•	Almost 50% of meat is consumed in NorthEastern part of India when compared with all the other regions.

•	Dairy is most consumed in Northern and Western regions of India.

•	Karnataka, Kerala, Assam, Goa and Nagaland are the states that had the most rainfall in 2015 and also have the highest number of orders for spicy recipes.

•	Please refer to the screenshots for the results of the analysis in Images folder.






