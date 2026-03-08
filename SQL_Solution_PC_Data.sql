
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================
select * FROM [PC_Sales].[dbo].[Laptop_Sales]

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
SELECT COUNT (*) FROM [PC_Sales].[dbo].[Laptop_Sales]

-- 2. Count the number of sales per Continent.
SELECT COUNT (*), Continent
FROM [PC_Sales].[dbo].[Laptop_Sales]
group by Continent

-- 3. Count the number of sales per Country or State.
SELECT COUNT (*) as NumberOfSales, [Country or State]
FROM [PC_Sales].[dbo].[Laptop_Sales]
group by [Country or State]


-- 4. List all distinct Shop Name values.
select distinct [Shop_Name]
FROM [PC_Sales].[dbo].[Laptop_Sales]

-- 5. Find the averag
SELECT avg (convert (money,[Sale_Price]))
FROM [PC_Sales].[dbo].[Laptop_Sales]

-- 6. Find the highest and lowest Sale Price.
select max(convert (money,[Sale_Price])) as HighestPrice, min (convert (money,[Sale_Price])) as LowestPrice
FROM [PC_Sales].[dbo].[Laptop_Sales]

-- 7. Count the number of sales by Payment Method.
select count (*) as NumberOfSales, [Payment_Method]
FROM [PC_Sales].[dbo].[Laptop_Sales]
group by [Payment_Method]

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT COUNT (*) as NumberOfSales, [Channel]
FROM [PC_Sales].[dbo].[Laptop_Sales]
group by [Channel]

-- 9. Count the number of sales by Priority level.
select count (*) as NumberOfSales, [Priority]
FROM [PC_Sales].[dbo].[Laptop_Sales]
Group by [Priority]

-- 10. Count the number of distinct PC Make values.
select count (distinct [PC_Make])
FROM [PC_Sales].[dbo].[Laptop_Sales]

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
   Select sum(Sale_Price) AS total_revenue
   FROM [PC_Sales].[dbo].[Laptop_Sales]

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
Select Sum(Sale_Price - Cost_Price) As total_Profit
FROM [PC_Sales].[dbo].[Laptop_Sales]

-- 13. Find the average Discount Amount.
SELECT AVG(
-- 14. Calculate total Finance Amount issued.
-- 15. Find total revenue per PC Make.
-- 16. Find average Sale Price per Storage Type.
-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

