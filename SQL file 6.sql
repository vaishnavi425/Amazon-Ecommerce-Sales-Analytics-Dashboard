# Category Ranking
select category, 
sum(Amount) Revenue,
rank() over(
order by sum(Amount) desc 
) Category_Rank
FROM `amazon sale report`
GROUP BY Category;

#State Ranking
SELECT
`ship-state`,
SUM(Amount) Revenue,
DENSE_RANK() OVER(
ORDER BY SUM(Amount) DESC
) State_Rank
FROM `amazon sale report`
GROUP BY `ship-state`;

#Revenue Contribution %
SELECT
Category,
ROUND(
SUM(Amount)*100/
(SUM(SUM(Amount)) OVER()),
2
) AS Revenue_Percentage
FROM `amazon sale report`
GROUP BY Category;

