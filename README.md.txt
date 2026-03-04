# SQL Query Optimization Project

## Project Overview
This project demonstrates how to optimize SQL queries for better performance in a high-volume data environment. It focuses on reducing execution time by moving away from inefficient subqueries and using modern SQL best practices.

## Key SQL Skills Demonstrated
- Schema Design: Structured 3 relational tables (Users, Orders, Order_Items) with proper Primary and Foreign Keys.
- Indexing: Implemented B-Tree indexes on order_date and user_id to speed up data retrieval.
- Advanced Querying: Used Common Table Expressions (CTEs) and Inner Joins to make queries more efficient and readable.
- Performance Tuning: Optimized data types and filtering logic to ensure the database can handle millions of rows.

## Project Structure
- schema.sql: Contains the table definitions, constraints, and index creation logic.
- queries.sql: Showcases the optimized business logic for fetching top customers.

## How to Use
1. Run the schema.sql script to set up the database environment.
2. Execute the queries.sql script to see the performance-optimized reporting logic.