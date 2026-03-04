-- Creating the database structure with proper constraints
-- This shows you understand data integrity
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    signup_date DATE NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Order_Items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Optimization: Adding B-Tree Indexes for faster filtering and joins
-- This is a 'Pro' move for performance tuning
CREATE INDEX idx_order_date ON Orders(order_date);
CREATE INDEX idx_user_orders ON Orders(user_id);
