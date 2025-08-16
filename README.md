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
2. Create the database:
3. Create the required tables (Employees, Departments, Salaries).
4. Insert sample data into the tables.
5. Run SELECT queries to view the data.
6. Perform operations:
7. UPDATE to modify employee data
8. DELETE to remove records

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
 
   SELECT * FROM Employees;

   SELECT * FROM Employees WHERE Department = 'IT';

   SELECT Department, AVG(Salary) AS AvgSalary
   FROM Employees
   GROUP BY Department;


