# E-Commerce Sales & Customer Behavior Analysis

## Project Overview
An end-to-end data analytics project analyzing e-commerce sales and customer purchasing behavior using Python, MySQL, and Power BI.

The project explores sales performance, product revenue, geographical trends, customer purchasing patterns, and customer segmentation using RFM analysis.

## Business Objectives
- Analyze overall sales and revenue performance.
- Identify top-performing products and countries.
- Understand monthly revenue trends.
- Identify high-value customers.
- Analyze repeat versus one-time customers.
- Segment customers using RFM analysis.

## Tools & Technologies
- Python
- Pandas and NumPy
- Matplotlib and Seaborn
- Jupyter Notebook
- MySQL
- Power BI

## Dataset
**Source:** UCI Machine Learning Repository — Online Retail Dataset.

The dataset contains historical online retail transactions from December 2010 to December 2011.

## Data Preparation
- Removed duplicate records.
- Removed records with missing CustomerID.
- Excluded cancelled transactions.
- Removed non-positive quantities and unit prices.
- Converted InvoiceDate to datetime.
- Created a Revenue column using Quantity × UnitPrice.
- Exported the cleaned dataset for MySQL and Power BI.

Final cleaned dataset: **392,692 records**.

## SQL Analysis
Performed business analysis using MySQL:
- Total revenue, orders, and customers.
- Revenue by country.
- Monthly revenue trends.
- Top 10 products by revenue.
- Top 10 customers by spending.
- One-time versus repeat customer analysis.

## Customer Segmentation
Performed RFM analysis using:
- Recency
- Frequency
- Monetary Value

Customer segments:
- Champions
- Loyal Customers
- At Risk
- Regular Customers

## Key Findings
- Total revenue: approximately £8.89 million.
- Total orders: 18,532.
- Total customers: 4,338.
- United Kingdom generated approximately £7.29 million in revenue.
- November 2011 had the highest monthly revenue at approximately £1.16 million.
- 65.58% of customers were repeat customers.
- The highest-spending customer generated approximately £280,206.

## Power BI Dashboard
The interactive dashboard includes:
- Revenue, orders, customers, and average order value KPIs.
- Monthly revenue trend.
- Country revenue analysis.
- Top 10 products.
- Customer purchase behavior.
- RFM customer segmentation.
- Country and month slicers.

## Project Structure
```text
Ecommerce_Sales_Analysis/
├── data/
├── notebooks/
├── sql/
├── dashboard/
└── README.md
```

## Conclusion
This project demonstrates an end-to-end data analytics workflow, from data cleaning and exploratory analysis to SQL-based business analysis, customer segmentation, and interactive dashboard development.
