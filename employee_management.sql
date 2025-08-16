
CREATE DATABASE employee_management;
USE employee_management;


CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);


CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_name)
VALUES ('Human Resources'), ('Finance'), ('IT'), ('Marketing');


INSERT INTO employees (first_name, last_name, email, phone, hire_date, salary, dept_id)
VALUES 
('Amit', 'Sharma', 'amit.sharma@example.com', '9876543210', '2023-05-10', 45000, 3),
('Priya', 'Patil', 'priya.patil@example.com', '9876501234', '2022-09-15', 50000, 2),
('Rahul', 'Verma', 'rahul.verma@example.com', '9856321470', '2024-01-20', 60000, 3);


SELECT * FROM employees;

SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

UPDATE employees
SET salary = 55000
WHERE emp_id = 1;

DELETE FROM employees WHERE emp_id = 2;
SELECT * FROM employees;