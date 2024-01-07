
--Create the table
DROP TABLE if exists dept;
CREATE TABLE dept
( dept_no varchar(4) NOT NULL,
dept_name varchar(200) NOT NULL,
     CONSTRAINT "pk_dept" PRIMARY KEY (
        "dept_no"
     )
);

--Create the Table 2
DROP TABLE if exists  Dept_emp;
CREATE TABLE Dept_emp (
emp_no int NOT NULL,
dept_no varchar(4) NOT NULL,
	CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no")	
);

--Create the Table 3
DROP TABLE if exists Dept_manager;
CREATE TABLE dept_manager(
dept_no varchar(4) NOT NULL,
emp_no int NOT NULL
);

--Create the Table 4
DROP TABLE if exists Salaries;
CREATE TABLE Salaries(
emp_no int NOT NULL,
salary float NOT NULL,
	    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

--Create the Table 5
DROP TABLE if exists Titles;
CREATE TABLE Titles(
title_id varchar(5) NOT NULL,
title varchar(200) NOT NULL,
	    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

--Create the Table 6
DROP TABLE if exists Employees;
CREATE TABLE Employees(
emp_no int NOT NULL,
emp_title_id varchar(5) NOT NULL,
birth_date date NOT NULL,
first_name varchar(200) NOT NULL,
last_name varchar(200) NOT NULL,
sex varchar(1) NOT NULL,
hire_date date NOT NULL,
	    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE dept ADD CONSTRAINT "fk_dept_dept_no" FOREIGN KEY("dept_no")
REFERENCES dept_emp ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_emp_emp_no_dept_no" FOREIGN KEY("emp_no", "dept_no")
REFERENCES "dept_manager" ("emp_no", "dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "salaries" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");