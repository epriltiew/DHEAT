CREATE DATABASE IF NOT EXISTS order_management;
USE order_management;

CREATE TABLE billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    total_amt DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    billing_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orderlist(order_id)
);
    