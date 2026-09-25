-- =========================================================
-- SQL ASSIGNMENT
-- Questions 1 - 4
-- =========================================================


-- =========================================================
-- QUESTION 1
-- Show the total payment amount for each payment date.
-- Sort by payment date in descending order.
-- Show only the top 5 latest payment dates.
-- =========================================================

SELECT 
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- =========================================================
-- QUESTION 2
-- Find the average credit limit of each customer.
-- Display customer name, country, and average credit limit.
-- Group by customer name and country.
-- =========================================================

SELECT 
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- =========================================================
-- QUESTION 3
-- Find the total price of products ordered.
-- Display product code, quantity ordered, and total price.
-- Group by product code and quantity ordered.
-- =========================================================

SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- =========================================================
-- QUESTION 4
-- Find the highest payment amount for each check number.
-- Display check number and highest amount.
-- Group by check number.
-- =========================================================

SELECT 
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;