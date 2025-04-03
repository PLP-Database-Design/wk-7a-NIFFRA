Assignment Questions
Write an SQL query to retrieve the checkNumber, paymentDate, and amount from the payments table.
-- Query to fetch checkNumber, paymentDate, and amount
SELECT checkNumber, paymentDate, amount
FROM payments;


Write an SQL query to retrieve the orderDate, requiredDate, and status of orders that are currently 'In Process' from the orders table. Sort the results in descending order of orderDate
-- Query to fetch order details for 'In Process' orders and sort them
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;




Write a query to display the firstName, lastName, and email of employees whose job title is 'Sales Rep' and order them in descending order of employeeNumber.
-- Query to fetch details of employees with job title 'Sales Rep'
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;


Write a query to retrieve all the columns and records from the offices table.
-- Query to fetch all columns and records from the offices table
SELECT *
FROM offices;


Write a query to fetch the productName and quantityInStock from the products table. Sort the results in ascending order of buyPrice and limit the output to 5 records.
-- Query to fetch product details sorted by buyPrice with a limit of 5
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
