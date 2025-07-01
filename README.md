# Superstore Sales Analysis (SQL Project)

This project explores sales data from a fictional superstore, using SQL to uncover key business insights and Excel for data visualisation. It showcases skills in data extraction, transformation, cleaning and analytical reporting core competencies for a data analyst role.

---

## Project Objectives

- Extract and query large datasets using SQL
- Clean and prepare raw data for analysis
- Derive useful insights using exploratory queries
- Visualise key findings in a structured report
- Practice real world data analysis workflows

---

## Tools Used

- **SQLite** – For running SQL queries and data cleaning
- **Excel** – For raw data handling and visualisation
- **Word** – For structured report writing
- **GitHub** – For version control and project showcase

---

## Project Structure

- `data-cleaning/` – SQL scripts used to clean and prepare the dataset (e.g., formatting dates, removing symbols, handling nulls).
- `data/` – Raw data used in the project (CSV format).
- `reports/` – Final analytical report with visuals, key insights and recommendations (Word document).
- `sql-scripts/` – All SQL queries used to analyse the data (e.g., sales trends, top customers, segment performance).
- `README.md` – Project overview and documentation (this file).

---

## Key Insights

- **Technology** was the leading sales category ($458,615), closely followed by Furniture and Office Supplies.
- **November and December** saw the highest sales across all years suggesting seasonal buying trends.
- **Top customers** accounted for a significant portion of revenue highlighting the importance of retention strategies.
- **Consumer segment** made up over 50% of total sales, suggesting a strong B2C focus.
- **Shipping delays** were most common in Standard Class deliveries potential for logistics optimisation.

---

## Data Cleaning Overview

Before analysis, the dataset was cleaned using SQL:
- Removed currency symbols from the `Sales` column
- Standardised `Order_Date` and `Ship_Date` formats (YYYY-MM-DD)
- Checked for null values across key fields

  
*The example below highlights only a few affected columns from the original dataset to demonstrate key cleaning steps. The full dataset includes additional fields not shown here.*

**Before cleaning:**
| Order ID       | Order Date | Ship Date | Sales   |
|----------------|------------|-----------|---------|
| CA-2015-140795 | 02/01/2015 | 02/03/2015| $468.90 |
| CA-2015-104269 | 03/01/2015 | 03/06/2015| $457.57 |

**After cleaning:**

| Order ID       | Order Date | Ship Date | Sales  |
|----------------|------------|-----------|--------|
| CA-2015-140795 | 2015-01-02 | 2015-03-02| 468.90 |
| CA-2015-104269 | 2015-01-03 | 2015-06-03| 457.57 |

See full SQL cleaning steps in: [`data-cleaning/cleaning_scripts.sql`](data-cleaning/cleaning_scripts.sql)

---

## Report Output

The report synthesises SQL outputs and Excel visuals, presenting trends, customer behaviour and recommendations.

See full report: [`reports/Superstore_Sales_Analysis_Report.docx`](reports/Superstore_Sales_Analysis_Report.docx)

---

## Contact

**Author:** Sumaya Mohamed  
**Email:** Svmaya1@outlook.com 
**GitHub:** github.com/sum427

