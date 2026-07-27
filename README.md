# 🎵 WSDA Music: Sales & Customer Behavior Analytics

## 📌 Project Overview
This project performs an exploratory data analysis on the **WSDA Music** relational database to extract business insights regarding customer sales, invoice distributions, and international market performance. 

The goal of this analysis is to assist WSDA Music in identifying purchasing trends, categorizing transaction values, correcting relational query logic, and highlighting top-performing global markets.

## 📋 Executive Summary
This repository contains the analytical framework used to evaluate WSDA Music’s transactional database. By reframing standard technical tasks as executive business questions, this analysis provides actionable insights into customer revenue tiers, geographic market performance, and regional sales strategy.

---

## 🛠️ Tools & Technologies Used
* **Database Management System:** SQLite / RDBMS
* **Query Language:** SQL (`SELECT`, `WHERE`, `LIKE`, `CASE`, `INNER JOIN`, `GROUP BY`, `HAVING`, `SUBSTR`, Subqueries)
* **Spreadsheets & Visualization:** Google Sheets (Bar Charts, Data Export)

---

## 🎯 Business Intelligence & Analytical Framework

### 1. Core Market Penetration & High-Value Transaction Monitoring
* **Enterprise Business Question:** "How are high-value transactions distributed within our primary domestic market, and what is the baseline volume of premium orders generated in the USA?"
* **Data Analyst Prompt:**  Write a SQL SELECT statement that retrieves a list of records (rows) FROM the Invoice table including InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, and Total. Filter the results using the WHERE clause along with the AND operator so that only invoices from the USA with a Total greater than 5 are showing. How many rows are there in the query results?
* **Analytical & Strategic Objective:** Establishes revenue benchmarks and high-value threshold validation for domestic market performance.

### 2. Urban Hub Customer Targeting & Regional Expansion
* **Enterprise Business Question:** "What specific metropolitan areas starting with the letter 'B' represent active regional markets for localized promotional targeting?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves a list of records (rows) FROM the Invoice table including InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, and Total. Filter the results using the WHERE clause along with the LIKE operator so that only invoices with BillingCity values that start with the letter ‘B’ are showing. How many rows are there in the query results?
* **Analytical & Strategic Objective:** Isolates specific urban centers to support targeted local marketing campaigns and regional logistics expansion.

### 3. Customer Value Tier Segmentation & Behavioral Clustering
* **Enterprise Business Question:** "How can we effectively segment our transactional volume into distinct pricing tiers to optimize promotional discounting and loyalty rewards?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves a list of records (rows) FROM the Invoice table including InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, and Total. Use a CASE statement and conclude it with END AS to display a new column named TotalPriceCategory. Totals less than 2 should be labeled as “Low Total”, while Total values BETWEEN 2 and 5 should be labeled “Medium Total”. By using ELSE, label all other values as “High Total”. Use ORDER BY to show the Total results in descending order using DESC. What is the Total of the record showing in the first row?
* **Analytical & Strategic Objective:** Categorizes purchasing behavior into distinct revenue tiers to inform VIP retention and discount thresholds.

### 4. Enterprise Revenue Benchmarking & Outlier Identification
* **Enterprise Business Question:** "Which individual customer transactions exceed the global average invoice value, and what proportion of revenue do these premium accounts drive?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves a list of records (rows) FROM the Invoice table including InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, and Total. Filter the results using the WHERE clause along with a subquery so that only invoices with a Total value greater than the average Total value are showing. Use ORDER BY to show the Total results in ascending order. What is the average Total value? What is the Total of the record showing in the first row?
* **Analytical & Strategic Objective:** Identifies high-value accounts exceeding global invoice averages to set sales performance targets and drive account expansion.

### 5. Sales Representative Portfolio & Account Mapping
* **Enterprise Business Question:** "How can we accurately map transactional invoice data to customer profile records to evaluate individual support representative portfolios?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves a list of records (rows) FROM the Invoice table including InvoiceID, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingCountry, and Total. Retrieve additional columns using the same SQL SELECT statement from the Customer table including CustomerID, FirstName, LastName. Perform an INNER JOIN with these two tables ON CustomerId from the Invoice table and CustomerId from the Customer table. ORDER BY CustomerID from the Customer table. Write the first and last name of the customer showing on InvoiceID 98.
* **Analytical & Strategic Objective:** Ensures high-value customer accounts are correctly mapped to internal customer support representatives to optimize service levels and minimize client churn.

### 6. Relational Data Integrity Verification & Query Optimization
* **Enterprise Business Question:** "How do we eliminate Cartesian product anomalies and relational join errors to ensure enterprise reporting accuracy?"
* **Data Analyst Prompt:** A new intern asks you for help with the previous question. They provide you with a screenshot of their query results and their SQL code. Explain the issue you see with their query results and what’s causing it in their SQL code. Correct the intern's SQL code, and provide the revised code with a new screenshot after you’ve made the necessary changes.
* **Analytical & Strategic Objective:** Eliminates structural join bugs and data distortion to maintain reporting integrity across financial dashboards.

### 7. Regional Catalog Curation & Market Pricing Analysis
* **Enterprise Business Question:** "What are the average basket sizes and transaction values across international cities to guide localized inventory and pricing strategies?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves BillingCity and the AVG(Total) for each city from the Invoice table by using a GROUP BY clause on BillingCity. ORDER BY BillingCity. How many rows are there in the query results?
* **Analytical & Strategic Objective:** Calculates average transaction values across international cities to optimize regional pricing elasticity and catalog curation.

### 8. High-Margin Urban Market Filtering & Prioritization
* **Enterprise Business Question:** "Which specific metropolitan markets maintain high average basket sizes exceeding our enterprise profitability threshold ($6)?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves BillingCity and the AVG(Total) for each city from the Invoice table. Filter the results using the WHERE clause along with the LIKE operator so that only BillingCity values that start with the letter ‘D’ are showing. Use a GROUP BY clause on BillingCity. Then, filter the results further using the HAVING clause so that only invoices with an AVG(Total) greater than 6 are showing. Write the name of the city and the average value showing in your query results.
* **Analytical & Strategic Objective:** Isolates top-performing metropolitan zones with high average basket sizes to prioritize strategic ad spend and resource allocation.

### 9. International Market Footprint Auditing & Compliance
* **Enterprise Business Question:** "What is the complete geographical footprint of our active international operating jurisdictions for regulatory and expansion audits?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves the DISTINCT BillingCountry values from the Invoice table. ORDER BY BillingCountry. How many rows are there in the query results?
* **Analytical & Strategic Objective:** Generates a distinct catalog of active international operating countries to evaluate cross-border compliance and expansion potential.

### 10. Data Anonymization & Customer Identifier Masking
* **Enterprise Business Question:** "How can we securely extract standardized customer identifier substrings for privacy-compliant reporting and data masking?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that uses SUBSTR to retrieve the first 3 letters from LastName records from the Customer table. What does the last name Hansen look like after you run the SUBSTR function?
* **Analytical & Strategic Objective:** Extracts core customer identifier substrings for secure reporting, data masking, and privacy-compliant marketing communications.

### 11. Top Global Revenue Driver Identification & Resource Allocation
* **Enterprise Business Question:** "Which top 5 international markets drive the highest transaction frequencies to warrant prioritized regional resource allocation?"
* **Data Analyst Prompt:** Write a SQL SELECT statement that retrieves BillingCountry and COUNT(*) for each country from the Invoice table by using a GROUP BY clause on BillingCountry. ORDER BY COUNT(*) DESC. Use LIMIT to retrieve the top 5 records. Export the query results. Import the query results into Google Sheets and create a Bar Chart.
* **Analytical & Strategic Objective:** Aggregates total transaction volume by country to isolate the top 5 international revenue drivers for enterprise resource allocation.

---

## 📊 Data Visualization & Results
The aggregated data for the top 5 purchasing countries was exported to Google Sheets to create visual market distribution charts.
* **Top Global Markets by Order Volume:** USA, Canada, France, Brazil, and Germany.

---

## 🏢 Executive Decision Framework

### What business decision will be made based on these numbers?
We will reallocate regional marketing spend and catalog curation focus toward top-performing urban hubs and international markets (such as the top 5 countries identified in the aggregation and high-average cities starting with 'D'), while adjusting support rep portfolios to prioritize high-value customer segments identified through tier segmentation and subquery benchmarking.

### What is the financial benchmark we are trying to hit?
We are targeting an average invoice transaction value baseline above $5.65 (aligned with overall and regional city benchmarks like those exceeding $6 in filtered urban markets), while increasing the proportion of transactions classified under the "High Total" category.

### If this metric goes up or down by 10% what operational action do we take tomorrow?
* **If average transaction value or total order volume increases by 10%:** Immediately expand local inventory curation, allocate additional digital ad spend to those high-performing regional markets, and fast-track VIP account management assignments for top-tier customers.
* **If average transaction value or total order volume decreases by 10%:** Trigger automated promotional discounts and bundle offers for the "Low Total" and "Medium Total" customer tiers, audit customer support representative account allocations to reduce churn risk, and review pricing elasticity across urban markets.

---

## 💡 Repository Organization & Strategic Takeaway
* **`WSDA_Music.db`**: The relational SQLite database file source.
* **`analysis_queries.sql`**: Comprehensive script addressing the full analytical cycle from questions 1 through 11.

**Strategic Takeaway:** 
Instead of just querying data, this analysis is structured around transactional performance and customer segmentation. The metrics confirm that high-revenue segments are heavily concentrated in specific urban hubs and international markets. Moving forward, we recommend reallocating marketing capital to these high-performing regions and implementing automated retention triggers for the high-value customer cohort.
