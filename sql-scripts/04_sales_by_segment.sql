SELECT Segment,
       ROUND(SUM(Sales), 2) AS total_sales
FROM Raw_superstore_clean
GROUP BY Segment
ORDER BY total_sales DESC;