# Employee Management System (SQL Project)

## 📌 Project Description
This project is a simple **Employee Management System** built using MySQL.  
It demonstrates the use of **DDL (CREATE, DROP)**, **DML (INSERT, UPDATE, DELETE)**, and **Queries with JOINS**.  
It can be used to manage employees, their departments, and salaries.

---

## ⚙️ Features
- Create and manage employees
- Manage departments
- Insert, update, and delete employee data
- Query and analyze employee information

---

## 🛠️ Technologies Used
- MySQL
- SQL Joins, Aggregate Functions, Group By, Having

---

## 🚀 How to Run
1. Install MySQL and open MySQL Workbench or CLI.  
2. Create the database:  
   ```sql
   CREATE DATABASE employee_management;
   USE employee_management;
   
3.Create Tables

    CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
    );

    CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
    );

4.Insert Sample Data

    INSERT INTO Departments (dept_name) VALUES ('HR'), ('IT'), ('Finance');
    INSERT INTO Employees (emp_name, dept_id, salary) 
    VALUES ('John Doe', 2, 50000), ('Jane Smith', 1, 45000), ('Mike Johnson', 3, 60000);

5.Update Data

    UPDATE Employees SET salary = 52000 WHERE emp_name = 'John Doe';

6.Delete Data

    DELETE FROM Employees WHERE emp_name = 'Jane Smith';

7.Query with Joins

    SELECT e.emp_name, d.dept_name, e.salary
    FROM Employees e
    JOIN Departments d ON e.dept_id = d.dept_id;



