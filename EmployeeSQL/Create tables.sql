
--Create the table
DROP TABLE if exists Dept;
CREATE TABLE Dept
( dept_no varchar(4),
dept_name varchar(200)
);

--Create the Table 2
DROP TABLE if exists  Dept_emp;
CREATE TABLE Dept_emp (
emp_no int,
dept_no varchar(4)
);

--Create the Table 3
DROP TABLE if exists Dept_manager;
CREATE TABLE Dept_manager(
dept_no varchar(4),
emp_no int
);

--Create the Table 4
DROP TABLE if exists Salaries;
CREATE TABLE Salaries(
emp_no int,
salary float
);

--Create the Table 5
DROP TABLE if exists Titles;
CREATE TABLE Titles(
title_id varchar(5),
title varchar(200)
);

--Create the Table 6
DROP TABLE if exists Employees;
CREATE TABLE Employees(
emp_no int,
emp_title_id varchar(5),
birth_date date,
first_name varchar(200),
last_name varchar(200),
sex varchar(1),
hire_date date
);