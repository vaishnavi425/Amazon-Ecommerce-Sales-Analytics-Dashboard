#1 Which category generates the highest revenue?
SELECT
Category,
ROUND(SUM(Amount),2) Revenue
FROM `amazon sale report`
GROUP BY Category
ORDER BY Revenue DESC;

#2 Which states generate the most revenue?
SELECT `ship-state`,
ROUND(SUM(Amount),2) Revenue
FROM `amazon sale report`
GROUP BY `ship-state`
ORDER BY Revenue DESC;

#3 Top 10 Cities
SELECT `ship-city`,
ROUND(SUM(Amount),2) Revenue
FROM `amazon sale report`
GROUP BY `ship-city`
ORDER BY Revenue DESC
LIMIT 10;

#4 Order Status Distribution
SELECT
Status,
COUNT(*) Orders_Count
FROM `amazon sale report`
GROUP BY Status
ORDER BY Orders_Count DESC;

#5 B2B vs B2C
SELECT
B2B,
COUNT(*) Orders_Count,
ROUND(SUM(Amount),2) Revenue
FROM `amazon sale report`
GROUP BY B2B;


