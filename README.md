# Retail Operations KPI Analysis

**SQL | PostgreSQL | Business Analytics**

## Project Overview

This project uses PostgreSQL to analyze retail operations across sales, customer behavior, product categories, and customer support.

The objective is to translate transactional data into meaningful business performance indicators that can help stakeholders understand trends, identify opportunities, and make informed operational decisions.

## Business Questions

The analysis focuses on eight questions:

1. How are revenue, order volume, and average order value changing over time?
2. Which customer segments generate the most revenue?
3. Which sales channels contribute the most revenue?
4. Who are the highest-value customers?
5. Which product categories contribute the most to sales?
6. What percentage of orders are completed?
7. Which support ticket categories have the highest volume, and how efficiently are they resolved?
8. How is the customer base growing month over month?

## Key Performance Indicators

| Analysis | Metrics | Business Purpose |
|---|---|---|
| Monthly Sales | Revenue, orders, average order value | Monitor sales performance and trends |
| Customer Segments | Revenue, purchasing customers, order volume | Compare customer segment performance |
| Sales Channels | Revenue, order volume, revenue share | Evaluate channel contributions |
| Customer Lifetime Value | Historical revenue and orders per customer | Identify high-value customers |
| Product Category Mix | Units sold, sales revenue, revenue share | Understand product demand and sales mix |
| Order Status | Order counts and completion rate | Monitor order processing outcomes |
| Customer Support | Ticket volume, resolution time, satisfaction | Evaluate support performance |
| Customer Acquisition | New and cumulative customers | Track customer base growth |

## Database

The project uses a relational PostgreSQL database with tables including:

- `customers`
- `orders`
- `order_items`
- `products`
- `categories`
- `support_tickets`

The database schema and sample data are available in `schema.sql` and `seed.sql`.

## SQL Techniques Demonstrated

- Multi-table joins
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- `GROUP BY` and sorting
- Common Table Expressions (CTEs)
- Scalar subqueries
- Window functions and running totals
- Date formatting and time interval calculations
- Conditional filtering

## Analytical Approach

Each analysis follows a business-focused process:

**Business Question → SQL Query → KPI → Business Interpretation**

For example, channel performance analysis measures revenue by sales channel and calculates each channel's contribution to total completed-order revenue.

This can help stakeholders understand the distribution of sales across channels and identify areas that warrant further investigation.

## Repository Structure

| File | Description |
|---|---|
| `schema.sql` | Database tables and relationships |
| `seed.sql` | Sample data |
| `Exploration.sql` | Exploratory SQL analysis |
| `kpi_queries.sql` | Retail operations KPI calculations |
| `sql_practice.sql` | SQL practice queries |
| `sub.sql` | Subquery exercises |

## Findings and Business Insights

Quantitative findings and interpretations will be added as query results are validated.

Planned analysis includes:

- Revenue trends and changes in average order value
- Revenue concentration across customer segments and channels
- Product category contributions to sales
- Order completion performance
- Customer support efficiency
- Customer acquisition trends

## Future Improvements

- Validate KPI definitions and reconcile revenue calculations
- Document actual query results and business insights
- Add visualizations of key metrics
- Expand analysis into inventory performance and operational efficiency

---

*An ongoing portfolio project focused on applying SQL to practical retail business questions.*
