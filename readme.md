GT Bootcamp
Project 2:  https://github.com/ItsGreyedOut/Project-2 

Topic:  Indian Food Recipes & rainfall

# Give relevant and succinct description of findings (2 - 3 sentences) 20 point proficiency
Description of findings:
We calculated the course types by state.
We will provide how many recipes have used certain ingredients. 

# Datasets used
Dataset 1: https://www.kaggle.com/sampannathapaliya/indian-fooddemographic-filtering 
Dataset 2: https://www.kaggle.com/rajanand/rainfall-in-india 

# Files used from datasets
Indian_Food_Cuisine.csv
State Codes.xlsx
rainfall in india 1901-2015-Filtered.csv

# Data join & data cleanup conducted with Jupyter Notebook
rainfall_in_india.ipynb

# Type of production database to load the data into (relational or non-relational)
Database type:  Postgres  

#Data Cleanup Process
The state codes.xlsx file from the dataset 1 was cleaned within excel by correcting the state names.  Next the Juypter Notebook file, rainfall_in_india.ipynb was created to clean the reset of the data and analyse the data.  The file "rainfall in india 1901-2015-FILTERED.csv" was used to see the rainfall in the states of the country of India.  We did a sort to see the 2015 rainfall.  The rainfall for 2015 and the maximum rainfall was 2904.6 mm.  Next we viewed the indian food recipes by creating a dataframe pointing to the Indian_Food_Cuisine.csv.  The dataframes created using the two files were merged on state doing a right inner join.  After that, within the indian_food_codes_df, the duplicate "STATE" was dropped.  Within the same dataframe the State Code column was renamed.  The annual_rainfall_2015_codes_df and state_codes_df on "SUBDIVISION" and "STATE" data was merged.  Next the duplicate state name "SUBDIVISION" column was dropped.  The indian_food_rainfall_codes_df and annual_rainfall_2015_codes_df were merged on "State Code" and "TWO-LETTER CODE".  "STATE" and "TWO-LETTER columns were dropped from the indian_food_rainfall_codes_df.  THe columns "ANNUAL" was renamed to "Annual Rainfall(mm)".  

# Postgres database 







