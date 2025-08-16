# employee-management-sql
Mini SQL Project: Employee Management System using MySQL

This project demonstrates a simple Employee Management System using MySQL.  
It covers **CRUD operations** (Create, Read, Update, Delete) and some data analysis queries.

## Features
- Employee & Department tables with relationships
- Insert, Update, Delete employee records
- Join queries for department-wise employee details
- Example queries for highest salary, department-wise count, etc.

## How to Run
1. Create a database in MySQL:
   ```sql
   CREATE DATABASE employee_management;



-- Display employees with department names
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Find highest paid employee
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;
