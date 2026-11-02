-- DDL Commands:

CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Departments (
	department_id int,
    department_name VARCHAR(100) NOT NULL);

    
CREATE TABLE Location (
	location_id int,
    location VARCHAR(30) NOT NULL);


CREATE TABLE Employees (
	employee_id int,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age int,
    hire_date DATE,
    designation VARCHAR(100),
    department_id int,
    location_id int,
    salary decimal(10.2));
    
    
ALTER TABLE Employees 
	ADD email VARCHAR(100);
    
ALTER TABLE Employees
	MODIFY designation VARCHAR(200);
  
ALTER TABLE Employees  
DROP COLUMN Age;
    
ALTER TABLE Employees
	RENAME COLUMN hire_date TO date_of_joining;
    
RENAME TABLE Departments TO Departmments_Info;

RENAME TABLE Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE employees;

DROP DATABASE Employee;

-- CONSTRAINTS:

DROP DATABASE IF EXISTS Employee;

CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Departments (
	department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE);
    
CREATE TABLE Location (
	location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(30) NOT NULL UNIQUE);
    
CREATE TABLE Employees (
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK(age>=18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10.2),
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
    