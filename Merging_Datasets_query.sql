Select * from indian_food
Select * from rainfall_codes
-- Merging both tables or datasets using SQL LEFT JOIN Statement.

SELECT indian_food.*,rainfall_codes.annual_rainfall
INTO receipes_rainfall
FROM indian_food
LEFT JOIN rainfall_codes
ON indian_food.state_code = rainreceipes_rainfallfall_codes.state_code;



