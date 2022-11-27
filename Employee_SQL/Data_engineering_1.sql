-- DATA ENGINEERING FOR TABLES
DROP TABLE departments;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE dept_emp;
DROP TABLE Employees_1;
DROP TABLE titles;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR
);
SELECT * FROM departments;

CREATE TABLE dept_manager(
	dept_no VARCHAR FOREIGN KEY NOT NULL,
	emp_no INT FOREIGN KEY NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
);
SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INT FOREIGN KEY NOT NULL,
	salary INT NOT NULL,
	from_date date,
	to_date date,
);
SELECT * FROM salaries;

CREATE TABLE dept_emp(
	emp_no FOREIGN KEY INT,
	dept_no FOREIGN KEY VARCHAR,
	from_date date,
	to_date date		
);
SELECT * FROM dept_emp;

CREATE TABLE Employees_1(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date date,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE);
		
SELECT * FROM Employees_1;

CREATE TABLE titles(
	dept_no PRIMARY KEY VARCHAR,
	dept_name VARCHAR
);
SELECT * FROM titles;
	