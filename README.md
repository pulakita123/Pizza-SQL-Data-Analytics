# Pizza-SQL-Data-Analytics

## Project Overview

This project focuses on analysing pizza shop sales data using MySQL and Microsoft Power BI.

I worked with a dataset containing order details, pizza information, product categories, sizes and prices. The aim was to understand the overall sales performance, identify popular products, analyse revenue contribution and explore customer ordering patterns.

I first used MySQL to organise the data and perform SQL analysis. I then used Power BI to create an interactive dashboard that presents the results through KPIs, charts and filters.

## Project Objectives

- Analyse overall sales and revenue performance.
- Identify the most frequently ordered pizza types and sizes.
- Compare sales across different pizza categories.
- Analyse hourly and monthly ordering patterns.
- Identify top-performing products based on quantity and revenue.
- Present the findings through an interactive Power BI dashboard.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| MySQL 8 | Database management and SQL analysis |
| MySQL Workbench | Writing and executing SQL queries |
| Power BI | Dashboard development and data visualisation |
| Microsoft Excel | Supporting data review and result organisation |

## Dataset Description

The project uses four CSV files:

| File | Description |
|---|---|
| orders.csv | Order dates and times |
| order_details.csv | Order line details and quantities |
| pizzas.csv | Pizza sizes and prices |
| pizza_types.csv | Pizza names, categories and ingredients |

The four tables are connected using their respective ID columns to allow combined analysis.

## SQL Analysis

I divided the SQL work into three sections.

### Basic Analysis

1. Total number of orders.
2. Total revenue generated.
3. Highest-priced pizza.
4. Most commonly ordered pizza size.
5. Top five pizza types by quantity sold.

### Intermediate Analysis

6. Total quantity sold by category.
7. Orders placed by hour.
8. Number of pizza types in each category.
9. Average daily pizza quantity sold.

### Advanced Analysis

10. Top three pizza types by revenue.
11. Revenue contribution percentage of each pizza type.
12. Cumulative revenue over time.
13. Top three revenue-generating pizzas within each category.

The SQL techniques used include:

- SELECT and WHERE
- ORDER BY and LIMIT
- Aggregate functions
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- CASE WHEN
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- Date and time functions

## Power BI Dashboard

I created a two-page dashboard to present the sales analysis.

### Page 1 – Executive Sales Overview

The first page provides an overview of the pizza shop's sales performance.

It includes:

- Total Revenue
- Total Pizzas Sold
- Total Orders
- Average Order Value
- Average Pizzas Per Order
- Revenue Per Pizza
- Quantity by Size
- Orders by Hour
- Monthly Orders and Revenue
- Quantity by Category
- Daily Revenue Trend

It also includes date, size and category filters.

### Page 2 – Product and Sales Performance

The second page focuses on product-level performance.

It includes:

- Total Revenue
- Total Pizzas Sold
- Best-Selling Pizza
- Highest-Revenue Pizza
- Revenue by Category
- Top Pizzas by Revenue
- Lower-Revenue Pizza Types
- Total Pizzas Sold by Name
- Revenue by Pizza Size

## Key Findings

The Power BI dashboard displays the following results:

| Metric | Result |
|---|---:|
| Total Revenue | $817.86K |
| Total Pizzas Sold | 50K |
| Total Orders | 21K |
| Average Order Value | $38.31 |
| Average Pizzas Per Order | 2.32 |
| Best-Selling Pizza | The Classic Deluxe Pizza |
| Highest-Revenue Pizza | The Thai Chicken Pizza |

Additional findings:

- Classic contributes the highest share of pizza quantity sold at 30.03%.
- Large pizzas contribute the highest displayed revenue share at 45.89%.
- The dashboard allows sales performance to be explored by date, size and category.

*Note: The 50K pizzas sold and 21K orders are rounded dashboard displays. Figures should be reconciled against the SQL results before being treated as exact values.*

## Business Recommendations

Based on the dashboard findings:

1. Maintain the availability of popular products.
2. Study the factors contributing to high revenue from top-performing pizzas.
3. Plan inventory according to category-wise demand.
4. Review the sales and revenue contribution of different pizza sizes.
5. Use hourly order patterns to support staff and preparation planning.
6. Review lower-performing products for possible improvement.

## Project Structure

```text
A1_Pizza_Shop_SQL_Data_Analysis/
│
├── 01_Basic_Analysis/
│
├── 02_Intermediate_Analysis/
│
├── 03_Advanced_Analysis/
│
├── 04_PowerBI/
│
├── 05_Results_and_Findings/
│
├── data/
│
└── README.md
```

## Conclusion

This project gave me practical experience in working with relational databases, writing SQL queries and creating interactive dashboards.

By combining MySQL and Power BI, I was able to explore sales performance from different perspectives and present the findings in a way that is easier to understand.

It also helped me strengthen my understanding of SQL analysis, data visualisation and business-oriented problem solving.

---

**Project Category:** Data Analytics  
**Tools:** MySQL | Power BI | Excel  
**Focus Areas:** SQL, Data Analysis, Dashboard Development and Business Insights
