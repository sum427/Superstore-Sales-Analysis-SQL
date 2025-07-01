SELECT "Ship Mode", ROUND(AVG(julianday("Ship Date") - julianday("Order Date")),0) AS AV_SHIPPING_DAYS 
FROM Raw_superstore_clean
WHERE "Order Date" IS NOT NULL AND "Ship Date" IS NOT NULL
GROUP BY "Ship Mode" ORDER BY AV_SHIPPING_DAYS DESC;
