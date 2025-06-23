SELECT 
  strftime('%Y-%m', 
           date(substr("Order Date", 7, 4) || '-' || 
                substr("Order Date", 4, 2) || '-' || 
                substr("Order Date", 1, 2))
          ) AS order_month,
  ROUND(SUM(Sales), 2) AS monthly_sales
FROM superstore
GROUP BY order_month
ORDER BY order_month;