SELECT *
	FROM public."receipes_rainfall"
	ORDER BY index asc;

--Update flavor_profile from '-1' to 'NOT AVAILABLE'
Update public."receipes_rainfall" SET flavor_profile = 'NOT AVAILABLE' 
where flavor_profile='-1';

--Calculate total meal types by state.
SELECT state, COUNT(Distinct course) AS "Total Number of MealTypes"
FROM public."receipes_rainfall"
GROUP BY state;

--Calculate unique list of total meal types and flavors in the dataset.
Select Distinct course from public."receipes_rainfall"
Select Distinct flavor_profile from public."receipes_rainfall"

--Select Distinct(course) from public."receipes_rainfall" where state='Maharashtra'
SELECT Distinct course FROM public."receipes_rainfall" where state='MAHARASHTRA';


--We will provide how many recipes have used certain ingredients like Rice.
Select * from public."receipes_rainfall" 
where ingredients Ilike '%Rice%';

--We will provide how many recipes have used certain ingredients like Jaggery which is a substitue for Sugar in most dishes.
select count(name) from public."receipes_rainfall" where course = 'dessert'

Select name, ingredients from public."receipes_rainfall" 
where ingredients Ilike '%milk%'

Select count(name) 
from public."receipes_rainfall" 
where name in (
Select name from public."receipes_rainfall" 
where ingredients Ilike '%sugar%'
or ingredients Ilike '%milk%')

--How many diet types per state
SELECT state, COUNT(Distinct diet) AS "Total Number of Diettypes"
FROM public."receipes_rainfall"
GROUP BY state;

--How many receipes are spicy by region, State
SELECT Region, COUNT(flavor_profile) AS "Total Number of Spicy receipes"
FROM public."receipes_rainfall"
where flavor_profile='spicy'
GROUP BY Region;

SELECT state, COUNT(flavor_profile) AS "Total Number of Spicy receipes"
FROM public."receipes_rainfall"
where flavor_profile='spicy'
GROUP BY state;

--How many receipes are sweet by region, state
SELECT Region, COUNT(flavor_profile) AS "Total Number of sweet receipes"
FROM public."receipes_rainfall"
where flavor_profile='sweet'
GROUP BY Region;

SELECT state, COUNT(flavor_profile) AS "Total Number of sweet receipes"
FROM public."receipes_rainfall"
where flavor_profile='sweet'
GROUP BY state;

--Provide the top 5 states that have highest rainfall in 2015.
SELECT
   DISTINCT(state),
   "annual_rainfall"
FROM
   public."receipes_rainfall"
where "annual_rainfall" is NOT NULL
ORDER BY
      "annual_rainfall" desc
	  FETCH first 5 rows only;
	
--What is the average number of spicy receipe orders where the rainfall is the highest.
SELECT Distinct(state), "annual_rainfall", Round(AVG(orders_num),2) as "spicy_orders"
FROM public."receipes_rainfall"
where flavor_profile='spicy' and "annual_rainfall" in (SELECT DISTINCT("annual_rainfall")
from public."receipes_rainfall"
where "annual_rainfall" is NOT NULL
ORDER BY "annual_rainfall" desc
FETCH first 5 rows only)
GROUP BY state,"annual_rainfall"

SELECT Distinct(state), "annual_rainfall", Round(AVG(orders_num),2) as "Avg orders"
FROM public."receipes_rainfall"
GROUP BY state, "annual_rainfall"
ORDER BY "Avg orders" desc

--
Select Distinct(state), annual_rainfall 
 FROM public."receipes_rainfall"
 
select min(annual_rainfall) from public."receipes_rainfall"
 
--Ingredients used mostly in areas where there is less Rainfall/Dry land.
SELECT "name", ingredients, state,region,
   "annual_rainfall"
INTO LOWEST_RAINFALL_INGREDIENTS
FROM
   public."receipes_rainfall"
where "annual_rainfall" is NOT NULL and annual_rainfall = (select min(annual_rainfall) from public."receipes_rainfall")

--*STEP 1:
select 
  name, 
  regexp_split_to_table(ingredients, ',') as Ingredient
  INTO lowest_ingredients
from lowest_rainfall_ingredients

Select * from lowest_ingredients
--*STEP 2:
select ingredient, count(ingredient) as Ingredient_count from lowest_ingredients
GROUP BY ingredient
ORDER BY Ingredient_count desc

-- Which part of India consumes more meat.
Select region, diet, state, name from receipes_rainfall 
where diet = 'non vegetarian'
group by  region, diet, state, name

select region, count(region)from receipes_rainfall 
where diet = 'non vegetarian'
group by region

-- Which part of India consumes more dairy like milk, cheese and eggs.
Select region, state, name, ingredients from public."receipes_rainfall" 
where ingredients Ilike '%milk%'
OR ingredients Ilike '%cheese%'
OR ingredients Ilike '%egg%'
group by region, state, name, ingredients;

select region, count(region) from receipes_rainfall 
where ingredients Ilike '%milk%'
OR ingredients Ilike '%cheese%'
OR ingredients Ilike '%egg%'
group by region

