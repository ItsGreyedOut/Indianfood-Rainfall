# GT Bootcamp
# Project 2:  https://github.com/ItsGreyedOut/Project-2 

# Project 2 ✍️ Team members and links to their personal GitHub sites to review thier portfolios:
Swapna Subbagari -  https://github.com/Subbagari1985 

John Clos -  https://github.com/johnclos 

Grey Hardy -  https://github.com/ItsGreyedOut


# Project 2 Description: 
A Case Study of Extract, Transform, Load

# 🧐 Topic:  The coorlation of Indian food recipes and rainfall.

![alt text](http://github.com/itsgreyedout/project-2/blob/master/images/indianfood2.png?raw=true)

# Datasets used:
Dataset 1: https://www.kaggle.com/sampannathapaliya/indian-fooddemographic-filtering 
Dataset 2: https://www.kaggle.com/rajanand/rainfall-in-india 


# Description of Findings
Description of findings:
There are ____ meal types by state.  There are _____ recipes that have used certain ingredients like rice, sugar, and milk in the state of Maharashtra. The data shows that there are ____ diet types per state.  Within each region there are ____ receipes that are spicy.  The top five states with the highest rainfall in 2015 are ____, ____,_____, _____, and ______.   Within the areas that have the hightest rainfall, the average number of spicy receip orders was ____.  Last the ingrediece used in the areas with the least rainfall or driest land were _________.


# Files used from Datasets
Indian_Food_Cuisine.csv, State Codes.xlsx, and rainfall in india 1901-2015-Filtered.csv


# Data join & data cleanup conducted with Jupyter Notebook
rainfall_in_india.ipynb


# Data Cleanup Process
The state codes.xlsx file from the dataset 1 was cleaned within excel by correcting the state names.  Next the Juypter Notebook file, rainfall_in_india.ipynb was created to clean the reset of the data and analyse the data.  The dataset 2 file "rainfall in india 1901-2015-FILTERED.csv" was used to see the rainfall in the states of the country of India.  We did a sort to see the 2015 rainfall.  The rainfall for 2015 and the maximum rainfall was 2904.6 mm.  Next, we viewed the indian food recipes by creating a dataframe pointing to the Indian_Food_Cuisine.csv.  The dataframes created using the two files were merged on state doing a right inner join.  After that, within the indian_food_codes_df, the duplicate "STATE" was dropped.  Within the same dataframe the State Code column was renamed.  The annual_rainfall_2015_codes_df and state_codes_df on "SUBDIVISION" and "STATE" data was merged.  Next the duplicate state name "SUBDIVISION" column was dropped.  The indian_food_rainfall_codes_df and annual_rainfall_2015_codes_df were joined on "State Code" and "TWO-LETTER CODE".  "STATE" and "TWO-LETTER columns were dropped from the indian_food_rainfall_codes_df.  The columns "ANNUAL" was renamed to "Annual Rainfall(mm)".  


# Type of production database to load the data into (relational or non-relational)
Database type:  Postgres  

The database was used to do futher analyse the data.  WE merged both tables datasets using SQL JOIN statement.  We cleaned up the flavor_profile removing unneeded data to clean it.  We used a SQL query to calculate the total meals by state.  Next, we moved on to gathering distinc courses of food by the state of Maharashtra.  Afterwards we researched how many diet types were found per state, how many receipes by region and the top five states that had the highest rainfall in 2015.  Then we analysed the coorliation between food and rainfall by finding the averate number of spicy receipe orders with the highest rainfall.  Then as a contrast, we used the dataset to provide the ingrdients that was used the most in the areas with the least rainfall.









