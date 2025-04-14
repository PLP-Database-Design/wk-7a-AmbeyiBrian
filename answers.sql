-- Assignment Questions

-- Question 1: Achieving 1NF (First Normal Form) 🛠️
-- Transforming the ProductDetail table into 1NF by ensuring atomic values in 'Products'

SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';

-- Question 2: Achieving 2NF (Second Normal Form) 🧩
-- Transforming the OrderDetails table into 2NF by removing partial dependencies

-- Step 1: Create a separate 'Orders' table with OrderID and CustomerName
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Step 2: Create a separate 'OrderItems' table with OrderID, Product, and Quantity
SELECT OrderID, Product, Quantity
FROM OrderDetails;
