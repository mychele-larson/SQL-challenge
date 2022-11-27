-- DATA ANALYSIS

-- List the employee number, last name, first name, gender, and salary of all employees.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- List the first name, last name and hire date for employees hired in 1986

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date <= '12/31/1986'
AND hire_date >= '01/01/1986';

-- List the manager name and dept number, dept name, employee number, last name & first name.

SELECT dept_manager.emp_no,
		dept_manager.dept_no,
		departments.dept_name,
		departments.dept_no,
		employees.emp_no,
		employees.last_name,
		employees.first_name
FROM departments
JOIN dept_manager.dept_no ON
dept_manager.dept_no = departments.dept_no;


-- List the dept number for each employee