SELECT ROUND(SUM(Amount),2) AS Total_Revenue
FROM `amazon sale report`;  #KPI 1: Total Revenue

SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `amazon sale report`;  #KPI 2: Total Orders

SELECT SUM(Qty) AS Total_Qty
FROM `amazon sale report`; #KPI 3: Total Quantity Sold

SELECT COUNT(DISTINCT `ship-state`) AS States
FROM `amazon sale report`; #KPI 4: Total States Served