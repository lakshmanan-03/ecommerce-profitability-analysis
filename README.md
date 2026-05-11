# E-Commerce Profitability & Discount Analysis

## 📌 Project Overview
This project analyzes e-commerce sales data to evaluate overall business profitability, regional performance, and the impact of discounts on profit margins using SQL and Power BI. The objective was to identify loss-driving categories, weak-performing regions, and discount-related business issues.

---

## 🎯 Business Problem
Although the business generated high sales revenue, profit margins remained relatively low. The analysis focused on identifying:

- Underperforming product categories
- Loss-making sub-categories
- Weak-performing regions
- Impact of discounts on profitability

---

## 🛠️ Tools & Technologies Used
- SQL (MySQL)
- Power BI
- Excel

---

## 📂 Project Workflow

### 1. Data Cleaning & Validation (Excel)
- Checked for missing values using COUNTBLANK()
- Verified duplicate records
- Identified negative-profit transactions using conditional formatting
- Validated dataset consistency before analysis

### 2. SQL Analysis (MySQL)
Performed SQL analysis to:
- Calculate total sales and total profit
- Compute overall profit margin (~12%)
- Analyze category-wise profitability
- Identify loss-making sub-categories
- Evaluate regional profit contribution
- Analyze the relationship between discount and profit

### 3. Dashboard Development (Power BI)
Built an interactive 2-page Power BI dashboard including:
- KPI cards for Sales, Profit, and Profit Margin
- Category-wise profit analysis
- Regional performance analysis
- Loss-driver analysis for Tables and Bookcases
- Scatter plot showing discount vs profit relationship
- Dynamic slicers and conditional formatting

---

## 📊 Key Insights
- Business generated approximately $2.3M in sales with a profit margin of ~12%
- Furniture category underperformed compared to Technology and Office Supplies
- Tables and Bookcases were identified as major loss-driving sub-categories
- East region contributed the highest losses in Tables
- Discounts above 20% significantly increased negative profit transactions

---

## 📷 Dashboard Preview

### Overview Page


### Profitability Analysis Page


---

## 📁 Repository Structure

```text
Dataset/
SQL/
Dashboard/
Images/
README.md
