
 SELECT 
  "Ship Mode",
  AVG(
    julianday(
      date(
        substr("Ship Date", 7, 4) || '-' || 
        substr("Ship Date", 4, 2) || '-' || 
        substr("Ship Date", 1, 2)
      )
    ) - julianday(
      date(
        substr("Order Date", 7, 4) || '-' || 
        substr("Order Date", 4, 2) || '-' || 
        substr("Order Date", 1, 2)
      )
    )
  ) AS avg_shipping_delay_days
FROM superstore
GROUP BY "Ship Mode"
ORDER BY avg_shipping_delay_days DESC;