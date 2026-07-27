/*
CREATED BY: Enigma Valdez
CREATE DATE: 07/25/2026
DESCRIPTION: Competency 8 Milestone Activity - WSDA Music SQL Analysis
*/

-- Question 2: Invoices from USA with Total > 5
SELECT InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, Total
FROM Invoice
WHERE BillingCountry = 'USA' AND Total > 5;

-- Question 3: Invoices where BillingCity starts with 'B'
SELECT InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, Total
FROM Invoice
WHERE BillingCity LIKE 'B%';

-- Question 4: Categorize invoice totals using CASE statement
SELECT InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, Total,
    CASE 
        WHEN Total < 2 THEN 'Low Total'
        WHEN Total BETWEEN 2 AND 5 THEN 'Medium Total'
        ELSE 'High Total'
    END AS TotalPriceCategory
FROM Invoice
ORDER BY Total DESC;

-- Question 5: Invoices with Total greater than the average Total
SELECT InvoiceID, InvoiceDate, BillingAddress, BillingCity, BillingCountry, Total
FROM Invoice
WHERE Total > (SELECT AVG(Total) FROM Invoice)
ORDER BY Total ASC;

-- Question 6a: INNER JOIN between Invoice and Customer tables
SELECT i.InvoiceId, i.CustomerId, c.CustomerId, c.FirstName, c.LastName, 
       i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingCountry, i.Total
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
ORDER BY c.CustomerId;

-- Question 6b: Revised classmate query (Fixing Cartesian Product bug)
SELECT i.invoiceid, i.customerid, c.customerid, c.firstname, c.lastname, 
       i.invoicedate, i.billingaddress, i.billingcity, i.billingcountry, i.total
FROM Invoice i
INNER JOIN Customer c ON i.CustomerId = c.CustomerId
ORDER BY c.customerid;

-- Question 7: Average Total for each BillingCity
SELECT BillingCity, AVG(Total) AS AverageTotal
FROM Invoice
GROUP BY BillingCity
ORDER BY BillingCity;

-- Question 8: Cities starting with 'D' having AVG(Total) > 6
SELECT BillingCity, AVG(Total) AS AverageTotal
FROM Invoice
WHERE BillingCity LIKE 'D%'
GROUP BY BillingCity
HAVING AVG(Total) > 6;

-- Question 9: Distinct BillingCountry list
SELECT DISTINCT BillingCountry
FROM Invoice
ORDER BY BillingCountry;

-- Question 10: Extract first 3 letters of LastName using SUBSTR
SELECT LastName, SUBSTR(LastName, 1, 3) AS ShortName
FROM Customer;

-- Question 11: Top 5 countries by invoice count
SELECT BillingCountry, COUNT(*) AS InvoiceCount
FROM Invoice
GROUP BY BillingCountry
ORDER BY COUNT(*) DESC
LIMIT 5;
