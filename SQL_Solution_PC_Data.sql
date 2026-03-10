
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
SELECT COUNT (*) as NumberOfSales, [Country_or_State] 
FROM [PC_Sales].[dbo].[Laptop_Sales]
group by [Country_or_State]


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
SELECT AVG([Discount_Amount])
FROM [PC_Sales].[dbo].[Laptop_Sales]


-- 14. Calculate total Finance Amount issued.
SELECT Sum(CAST([Finance_Amount] as INT)) As Total_Amount_issued
FROM [PC_Sales].[dbo].[Laptop_Sales]


-- 15. Find total revenue per PC Make.
SELECT 
-- 16. Find average Sale Price per Storage Type.
-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
       select [Shop_Name],
       sum([Sale_Price]-[Cost_Price]) as Profit
       FROM [PC_Sales].[dbo].[Laptop_Sales]
       group by [Shop_Name]


-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
       select sum(CAST((Sale_Price - Cost_Price) / (Sale_Price) as INT)) as Profit
       FROM [PC_Sales].[dbo].[Laptop_Sales]


-- 23. Determine which Continent has the highest total revenue.
Select TOP 1 Continent,sum(Sale_Price) AS total_revenue
FROM [PC_Sales].[dbo].[Laptop_Sales]
GROUP BY Continent
ORDER BY sum(Sale_Price) DESC


-- 24. Calculate average Sale Price per RAM size.
SELECT RAM,  AVG(Sale_Price) as AVG_Sale_Price
FROM [PC_Sales].[dbo].[Laptop_Sales]
GROUP BY RAM
ORDER BY AVG_Sale_Price DESC


-- 25. Find the PC Model with the highest Sale Price.
SELECT TOP 1 [PC_MODEL], [Sale_Price]
FROM [PC_Sales].[dbo].[Laptop_Sales]
ORDER BY Sale_Price DESC

-- 26. Calculate the average number of days between Purchase Date and Ship Date.
SELECT AVG(DATEDIFF(DAY, 
Try_Cast(Purchase_Date AS datetime), 
Try_Cast(Ship_Date AS datetime))) AS Days_between_PD_SD
FROM [PC_Sales].[dbo].[Laptop_Sales]
WHERE Purchase_Date is not Null and Ship_Date is not Null

-- 27. Determine which Sales Person Department generates the highest revenue.
SELECT TOP 1 [Sales_Person_Department], sum(Sale_Price) as Revenue
FROM [PC_Sales].[dbo].[Laptop_Sales]
GROUP BY Sales_Person_Department
ORDER BY sum(Sale_Price) DESC

-- 28. Calculate total revenue per Storage Capacity.
SELECT Storage_Capacity, sum(Sale_Price) AS total_revenue
FROM [PC_Sales].[dbo].[Laptop_Sales]
Group by Storage_Capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.
SELECT Sale_Price, PC_Market_Price 
FROM [PC_Sales].[dbo].[Laptop_Sales]
WHERE Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
SELECT Sales_Person_Name, sum(Sale_Price) AS  Total_Sales_Person_Employee ,
--ROW_NUMBER () OVER(ORDER BY Sum(Sale_Price)) AS Sale_row_number,
RANK () OVER(ORDER BY SUM(Sale_Price)) AS Overall_rank
FROM [PC_Sales].[dbo].[Laptop_Sales]
GROUP BY Sales_Person_Name



