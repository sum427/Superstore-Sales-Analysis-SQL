SELECT "Customer Name",
       ROUND(SUM(Sales), 2) AS total_sales
FROM Raw_superstore_clean
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;