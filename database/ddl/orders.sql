USE business_intelligence;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') NOT NULL,
    payment_method ENUM('UPI', 'Credit Card', 'Debit Card', 'Net Banking', 'Cash on Delivery') NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    shipping_city VARCHAR(50),
    shipping_state VARCHAR(50),

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);