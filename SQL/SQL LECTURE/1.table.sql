CREATE DATABASE parks_and_recreation;
USE parks_and_recreation
CREATE TABLE employee_demographics (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    birth_date DATE
);
CREATE DATABASE IF NOT EXISTS parks_and_recreation;
USE parks_and_recreation;
CREATE TABLE employee_demographics (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    birth_date DATE
);
USE parks_and_recreation;

CREATE TABLE employee_salary (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    occupation VARCHAR(100),
    salary INT,
    dept_id INT
);
CREATE TABLE parks_departments (
    department_id INT,
    department_name VARCHAR(100)
);
INSERT INTO employee_demographics
(employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1, 'Leslie', 'Knope', 36, 'Female', '1988-09-25'),
(2, 'Ron', 'Swanson', 55, 'Male', '1969-03-15'),
(3, 'Tom', 'Haverford', 29, 'Male', '1995-06-12'),
(4, 'April', 'Ludgate', 25, 'Female', '1999-03-24'),
(5, 'Andy', 'Dwyer', 30, 'Male', '1994-05-01'),
(6, 'Donna', 'Meagle', 35, 'Female', '1989-02-10'),
(7, 'Ann', 'Perkins', 32, 'Female', '1992-07-15'),
(8, 'Chris', 'Traeger', 42, 'Male', '1982-04-20'),
(9, 'Jerry', 'Gergich', 61, 'Male', '1963-11-10'),
(10, 'Ben', 'Wyatt', 38, 'Male', '1986-12-01');
INSERT INTO employee_salary
(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(1, 'Leslie', 'Knope', 'Deputy Director', 75000, 1),
(2, 'Ron', 'Swanson', 'Director', 80000, 1),
(3, 'Tom', 'Haverford', 'Entrepreneur', 50000, 3),
(4, 'April', 'Ludgate', 'Assistant', 45000, 1),
(5, 'Andy', 'Dwyer', 'Musician', 40000, 3),
(6, 'Donna', 'Meagle', 'Realtor', 60000, 2),
(7, 'Ann', 'Perkins', 'Nurse', 65000, 2),
(8, 'Chris', 'Traeger', 'City Manager', 90000, 1),
(9, 'Jerry', 'Gergich', 'Administrator', 35000, 2),
(10, 'Ben', 'Wyatt', 'Accountant', 70000, 3);
INSERT INTO parks_departments
(department_id, department_name)
VALUES
(1, 'Parks and Recreation'),
(2, 'Healthcare'),
(3, 'Finance');
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;
SELECT * FROM parks_departments;