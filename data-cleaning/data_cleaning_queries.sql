- Preview first 10 rows
SELECT * FROM Raw_superstore_clean LIMIT 10;

- Check table structure
PRAGMA table_info(Raw_superstore_clean);

- Count NULLs in key columns
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
    SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS null_ship_date
FROM Raw_superstore_clean;

- Check for non numeric values in total_sales 
SELECT Sales 
FROM Raw_superstore_clean
WHERE Sales LIKE '%$%';

- Preview order and ship date formats
SELECT Order_Date, Ship_Date 
FROM Raw_superstore_clean
LIMIT 20;

- Remove dollar sign stored as text 
UPDATE Raw_superstore_clean
SET Sales = REPLACE(Sales, '$', '');

- Convert Sales to REAL
UPDATE Raw_superstore_clean
SET Sales = CAST(Sales AS REAL);

- Convert Order_Date format
UPDATE Raw_superstore_clean
SET Order_Date = substr(Order_Date, 7, 4) || '-' || 
                 substr(Order_Date, 1, 2) || '-' || 
                 substr(Order_Date, 4, 2);

- Convert Ship_Date format
UPDATE Raw_superstore_clean
SET Ship_Date = substr(Ship_Date, 7, 4) || '-' || 
                substr(Ship_Date, 1, 2) || '-' || 
                substr(Ship_Date, 4, 2);



