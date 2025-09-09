-- Assignment: Joins and Relationships
-- Question 1
-- Get firstName, lastName, email, officeCode from employees, INNER JOIN with offices on officeCode
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2
-- Get productName, productVendor, productLine from products, LEFT JOIN with productlines on productLine
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3
-- Get orderDate, shippedDate, status, customerNumber for first 10 orders, RIGHT JOIN customers with orders on customerNumber
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
