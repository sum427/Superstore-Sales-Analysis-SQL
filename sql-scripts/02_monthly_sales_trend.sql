SELECT strftime('%Y-%m', "Order Date") AS order_month, 
ROUND(SUM(Sales),2) AS monthly_sales
FROM Raw_superstore_clean
GROUP BY order_month
ORDER BY order_month;

