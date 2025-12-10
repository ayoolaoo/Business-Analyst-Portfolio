/*
Bike Sales Data Exploration

Skills Used: JDDL (ALTER TABLE, CREATE TABLE), DML (INSERT, UPDATE), Joins (INNER, LEFT, FULL via UNION), Window Functions, Aggregations, Subqueries, Data Cleaning, Analytical SQL

*/

--Add a new column
Alter TABLE Bike_sales
add COLUMN customer_id INTEGER


--fill the addded column with values
UPDATE Bike_sales
set customer_id = ROWID


--split dataset into two normalized tables
—Customer table
create table bike_customers as
SELECT
customer_id,
Customer_Age,
Age_Group,
Customer_Gender,
Country,
State
FROM
Bike_sales


—Sales _table
CREATE TABLE sales_data as
select 
customer_id,
date,
Year,
Month,
Day,
Product_Category,
Sub_Category,
Product,
Order_Quantity,
Unit_Cost,
Unit_Price,
Profit,
Cost,
Revenue
FROM Bike_Sales


--join the two tables
select Customer_Age,
Age_Group,
Customer_Gender,
Country,
State
from bike_customers
join sales_data
on bike_customers.customer_id = sales_data.customer_id
 

--show total revenue by country using both tables
select Country,
sum(Revenue) as total_country_revenue
from bike_customers
JOIN sales_data
on bike_customers.customer_id = sales_data.customer_id
GROUP by Country
 

--show total revenue by product category AND country.
select Country,
Product_Category,
sum (Revenue) as total_revenue
from bike_customers
JOIN sales_data
on bike_customers.customer_id = sales_data.customer_id
GROUP by Country, Product_Category


--total revenue by country
SELECT 
Country,
SUM(Revenue) AS total_country_revenue
FROM bike_customers
JOIN sales_data
ON bike_customers.customer_id = sales_data.customer_id
GROUP BY Country


--Total revenue by product category and country
SELECT 
Country,
Product_Category,
SUM(Revenue) AS total_revenue
FROM bike_customers
JOIN sales_data
ON bike_customers.customer_id = sales_data.customer_id
GROUP BY Country, Product_Category


--Top 3 highest-revenue products per country
SELECT *
FROM (
        SELECT 
            Country,
            Product,
            SUM(Revenue) AS total_country_revenue,
            ROW_NUMBER() OVER (
                PARTITION BY Country
                ORDER BY SUM(Revenue) DESC
            ) AS rank
        FROM bike_customers bc
        JOIN sales_data sd
        ON bc.customer_id = sd.customer_id
        GROUP BY Country, Product
     ) AS ranked_products
WHERE rank <= 3


--products with revenue above the average
SELECT Product, Revenue
FROM Bike_Sales
WHERE Revenue > (SELECT AVG(Revenue) FROM Bike_Sales)


--Countries with total revenue above average
SELECT 
 Country,
 SUM(Revenue) AS total_revenue
FROM Bike_Sales
GROUP BY Country
HAVING total_revenue > (SELECT AVG(Revenue) FROM Bike_Sales)


--Products sold in high-revenue countries
SELECT Product, Revenue
FROM Bike_Sales
WHERE Country IN (
    SELECT Country
    FROM Bike_Sales
    GROUP BY Country
    HAVING SUM(Revenue) > (SELECT AVG(Revenue) FROM Bike_Sales))


--Customers who bought products from the top 2 most profitable categories
SELECT 
    Customer_ID,
    Country,
    Customer_Age
FROM Bike_Sales
WHERE Product_Category IN (
    SELECT Product_Category
    FROM Bike_Sales
    GROUP BY Product_Category
    ORDER BY SUM(Profit) DESC
    LIMIT 2
)





 
