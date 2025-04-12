![bookstoreERdiagram](https://github.com/user-attachments/assets/d8958611-c193-4eac-8d1d-99929a28da0f)# DatabaseGroupProject

# 📚 BookStoredb

**BookStoredb** is a relational database designed to efficiently manage a bookstore's key operations. It includes functionality for tracking books, authors, publishers, and languages, as well as handling customer information, addresses, and orders. The database also supports order processing, including shipping methods, statuses and role-based access control.  With its well-structured tables and relationships, it allows for streamlined management of inventory, customer data, and orders, making it a powerful solution for running a bookstore.

## 🔧 Technologies Used
- **Database:** MySQL
- **Language:** SQL
- **Editor:** VSCode
-  **Diagram Tool:** draw.io

## 🗂️ Key Tables
- **Books:** `book`, `book_language`, `publisher`, `author`, `book_author`
- **Customers:** `customer`, `address`, `country`
- **Orders:** `cust_order`, `order_line`, `shipping_method`, `order_status`

## 🔐 User Roles & Access
- **Admin**: Full access (All privileges)
- **Developer**: Read, write, update, delete access
- **Read-Only**: Can only read data

## 🚀 Getting Started
1. Open the `BookStoredb.sql` file in **VSCode**.
2. Run the SQL script in **MySQL** (via Workbench or CLI).
3. Sample data is included for testing.

 ## Contribution
 ** Mohamed Bashir**
Contributed to the BookStoredb project by designing the Entity-Relationship (ER) diagram, which visually represents the structure and relationships between the database tables, ensuring an organized and efficient database design.
**Lindiwe Mphuthi**
Designed and implemented the database schema, ensuring clear relationships between tables for efficient data management. This included managing book-author relationships, customer orders, shipping methods, and order history, with a focus on relational integrity and optimized data access.
 **Innocent Obuyumbi**
Responsible for creating and assigning user roles with appropriate privileges. This included defining access levels for admin, developer, and read-only users to ensure secure and controlled interaction with the BookStoredb database.




