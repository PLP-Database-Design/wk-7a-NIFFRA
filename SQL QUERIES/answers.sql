-- =========================================================
-- Question 1: Achieving 1NF (First Normal Form) 🛠️
-- The original table has multiple products in a single field, violating 1NF.
-- Goal: Flatten the "Products" column so that each row contains only ONE product per order.

-- First, create the 1NF-compliant table:
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Now, insert rows so that each product is a separate record:
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- =========================================================
-- Question 2: Achieving 2NF (Second Normal Form) 🧩
-- The original table has partial dependency: CustomerName depends on only OrderID, not the full composite key (OrderID, Product).
-- Goal: Decompose the table into two — one for orders, one for product details — to eliminate partial dependency.

-- Step 1: Create a table for Orders (OrderID → CustomerName)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Create a table for Products per Order (OrderID + Product → Quantity)
CREATE TABLE OrderProduct (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Step 3: Populate the Orders table
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Step 4: Populate the OrderProduct table
INSERT INTO OrderProduct (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
