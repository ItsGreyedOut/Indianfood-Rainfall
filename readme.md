# GT Bootcamp
# Project 2:  https://github.com/ItsGreyedOut/Project-2 

# Project 2 ✍️ Team members and links to their personal GitHub sites to review thier portfolios:
Swapna Subbagari -  https://github.com/Subbagari1985 

John Clos -  https://github.com/johnclos 

Grey Hardy -  https://github.com/ItsGreyedOut


# Project 2 Description: 

A Case Study of Extract, Transform, Load


# 🧐 Topic:  The corelation of Indian food recipes and rainfall.

![alt text](http://github.com/itsgreyedout/project-2/blob/master/images/indianfood2.png?raw=true)

# Extraction:
Data files were used to extract the data from the Excel csv files.   They were extracted using Python and Pandas within Jupyter notebook. 


# Datasets used:
Dataset 1: https://www.kaggle.com/sampannathapaliya/indian-fooddemographic-filtering 

Dataset 2: https://www.kaggle.com/rajanand/rainfall-in-india 


# Transformation:
The state codes.xlsx file from the dataset 1 was cleaned within excel by correcting the state names.  Next the Juypter Notebook file, rainfall_in_india.ipynb was created to clean the reset of the data and analyse the data.  The dataset 2 file "rainfall in india 1901-2015-FILTERED.csv" was used to see the rainfall in the states of the country of India.  We filted the data to show only the 2015 rainfall for India.  The rainfall for 2015 and the maximum rainfall was 3106 mm in the state of Karantaka.  Afterwards we dropped all other columns minus subdivision and annual to fine tune our results.  Next, we viewed the Indian food recipes by creating a dataframe pointing to the Indian_Food_Cuisine.csv.  We corrected the columns by adjusting to uppercase on the state column for consistancy.  The dataframes created using the two files were merged on state doing a right inner join.  

Next, we read the state codes excel file and merged the file with the indian_food_df.  Then we dropped the duplicate state column.  We renamed the column names with both the rainfaill_df and the indian_food_df.  


# Loading Process using Postgres SQL:
Last using SQLAlchemy we created tables for both datasets Postgres SQL.  We created a join table in postgres.  


# Files used from datasets:
Indian_Food_Cuisine.csv, State Codes.xlsx, and rainfall in india 1901-2015-Filtered.csv


# Type of database:
Postgres database was used.

The database was used to do futher analyse the data.  We merged both tables datasets using SQL JOIN statement.  We cleaned up the flavor_profile removing unneeded data to clean it.  We used a SQL query to calculate the total meals by state.  Next, we moved on to gathering distinct courses of food by the state of Maharashtra.  Afterwards we researched how many diet types were found per state, how many receipes by region and the top five states that had the highest rainfall in 2015.  Then we analysed the coorliation between food and rainfall by finding the averate number of spicy receipe orders with the highest rainfall.  Then as a contrast, we used the dataset to provide the ingrdients that was used the most in the areas with the least rainfall.


# Description of findings:
Description of findings:
There are ____ meal types by state.  There are _____ recipes that have used certain ingredients like rice, sugar, and milk in the state of Maharashtra. The data shows that there are ____ diet types per state.  Within each region there are ____ receipes that are spicy.  The top five states with the highest rainfall in 2015 are ____, ____,_____, _____, and ______.   Within the areas that have the hightest rainfall, the average number of spicy receip orders was ____.  Lastly the ingredients used in the areas with the least rainfall or driest land were _________.










