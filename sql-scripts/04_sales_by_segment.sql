SELECT Segment,
       ROUND(SUM(Sales), 2) AS total_sales
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;