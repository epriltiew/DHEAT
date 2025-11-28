CREATE DATABASE IF NOT EXISTS order_management;
USE order_management;

CREATE TABLE billing (
    bill_id VARCHAR(10) PRIMARY KEY,
    order_id VARCAHR(10) NOT NULL,
    price DOUBLE NOT NULL,
    total_amt DOUBLE NOT NULL,
    payment_method VARCHAR(20) NOT NULL,
    billing_date DATETIME NOT NULL,
    FOREIGN KEY (order_id) REFERENCES cus_order(order_id)
);

SELECT * FROM billing;
    