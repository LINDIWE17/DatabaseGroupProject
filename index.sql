CREATE DATABASE BookStoredb;

USE BookStoredb;

CREATE TABLE author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    publisher_id INT,
    language_id INT,
    price DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);


CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE book_language (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(50) NOT NULL
);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE address (
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(255),
    city VARCHAR(100),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE country (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) NOT NULL
);

CREATE TABLE cust_order (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_status_id INT,
    shipping_method_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(shipping_method_id)
);

CREATE TABLE order_line (
    order_id INT,
    book_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE shipping_method (
    shipping_method_id INT PRIMARY KEY AUTO_INCREMENT,
    method VARCHAR(50) NOT NULL
);

CREATE TABLE order_status (
    order_status_id INT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(50) NOT NULL
);

USE BookStoredb;

INSERT INTO author (name) VALUES ('J.K. Rowling'), ('George Orwell'), ('Jane Austen');

INSERT INTO publisher (name) VALUES ('Penguin Books'), ('HarperCollins'), ('Oxford Press');

INSERT INTO book_language (language_name) VALUES ('English'), ('French'), ('Spanish');

INSERT INTO book (title, publisher_id, language_id, price, stock) VALUES 
('1984', 1, 1, 14.99, 50),
('Pride and Prejudice', 3, 1, 18.99, 40),
('Harry Potter and the Philosopher''s Stone', 2, 1, 25.99, 30);


INSERT INTO book_author (book_id, author_id) VALUES 
(1, 2), 
(2, 3), 
(3, 1); 

INSERT INTO customer (name, email) VALUES 
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

INSERT INTO country (country_name) VALUES ('South Africa'), ('United States'), ('France');

INSERT INTO address (street, city, country_id) VALUES 
('123 Main St', 'Pretoria', 1),
('456 Elm St', 'New York', 2);

INSERT INTO shipping_method (method) VALUES ('Standard Shipping'), ('Express Shipping');

INSERT INTO order_status (status) VALUES ('Pending'), ('Shipped'), ('Delivered');

INSERT INTO cust_order (customer_id, order_status_id, shipping_method_id) VALUES 
(1, 1, 2), 
(2, 2, 1); 

INSERT INTO order_line (order_id, book_id, quantity) VALUES 
(1, 3, 1), 
(2, 1, 2); 