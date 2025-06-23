SELECT Category,
       ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;