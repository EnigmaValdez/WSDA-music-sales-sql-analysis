# WSDA-music-sales-sql-analysis
SQL queries, data analysis, and market visualization for the WSDA Music database.
# WSDA Music Sales & Customer Data Analysis

## 📌 Project Overview
This project performs an exploratory data analysis on the **WSDA Music** relational database to extract business insights regarding customer sales, invoice distributions, and international market performance. 

The goal of this analysis is to assist WSDA Music in identifying purchasing trends, categorizing transaction values, correcting relational query logic, and highlighting top-performing global markets.

---

## 🛠️ Tools & Technologies Used
* **Database Management System:** SQLite / RDBMS
* **Query Language:** SQL (`SELECT`, `WHERE`, `LIKE`, `CASE`, `INNER JOIN`, `GROUP BY`, `HAVING`, `SUBSTR`, Subqueries)
* **Spreadsheets & Visualization:** Google Sheets (Bar Charts, Data Export)

---

## 🔍 Key SQL Analysis & Highlights

### 1. Revenue Categorization (`CASE` Logic)
Categorized invoice values into **Low Total**, **Medium Total**, and **High Total** segments to evaluate revenue distribution across order sizes.

### 2. High-Value Invoices Above Average (Subqueries)
Utilized a subquery to isolate customer orders that exceeded the global average invoice total across all transactions.

### 3. Relational Join Logic Fix (`INNER JOIN`)
Identified and resolved a Cartesian product issue in a classmate's query caused by a missing `ON` clause. Corrected the query to properly join the `Invoice` and `Customer` tables on `CustomerId`.

### 4. String Manipulation (`SUBSTR`)
Applied the `SUBSTR` function to extract customer name identifiers for data anonymization and reporting.

### 5. Top 5 Global Markets (Aggregation & Ranking)
Aggregated total order counts by billing country using `GROUP BY` and `COUNT(*)`, limiting the output to the top 5 international markets.

---

## 📊 Data Visualization & Results
The aggregated data for the top 5 purchasing countries was exported to Google Sheets to create visual market distribution charts.

* **Top Global Markets by Order Volume:** USA, Canada, France, Brazil, and Germany.

---

## 📁 Repository Structure
```text
wsda-music-sales-sql-analysis/
├── README.md               <-- Project Overview & Documentation
├── WSDA_Music.db           <-- SQLite Database File
└── analysis_queries.sql    <-- Full SQL Script for Questions 1-11
