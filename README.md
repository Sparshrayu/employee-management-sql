# Employee Management System (MySQL)

This project is a simple **Employee Management System** built using MySQL.  
It demonstrates how to manage employee records with basic SQL operations:  
- Creating database and tables  
- Inserting records  
- Updating records  
- Deleting records  
- Fetching employee details  

---

## How to Run

1. Open MySQL Workbench or any SQL client.  
2. Create a new database:  
   ```sql
   CREATE DATABASE employee_management;
   USE employee_management;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (Name, Age, Department, Salary)
VALUES 
('Rahul Sharma', 28, 'IT', 45000.00),
('Sneha Patil', 25, 'HR', 35000.00),
('Aman Verma', 30, 'Finance', 50000.00),
('Priya Singh', 26, 'Marketing', 40000.00);

UPDATE Employees
SET Salary = 48000.00
WHERE Name = 'Rahul Sharma';

DELETE FROM Employees
WHERE Name = 'Priya Singh';

-- Fetch all employees 
SELECT * FROM Employees;

-- Fetch employees from IT department
SELECT * FROM Employees WHERE Department = 'IT';

-- Fetch average salary
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;


