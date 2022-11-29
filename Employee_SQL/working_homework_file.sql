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
		departments.dept_name,
		departments.dept_no,
		employees.emp_no,
		employees.last_name,
		employees.first_name
FROM dept_manager
LEFT JOIN departments ON
dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON
dept_manager.emp_no = employees.emp_no;


-- List the dept number, employee number, last name, first name and department name for each employee

SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		departments.dept_name,
		dept_manager.dept_no
FROM employees
RIGHT JOIN dept_manager ON
employees.emp_no = dept_manager.emp_no
RIGHT JOIN departments ON
dept_manager.dept_no = departments.dept_no;

-- List first name, last name and gender of employee with first name "Hercules" and last name begins with "B"

SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
AND sex IS NOT NULL;

-- List all employees in Sales Department-including employee number, first name and last name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp ON
e.emp_no = dept_emp.emp_no
INNER JOIN departments AS d ON
dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR
		dept_name = 'Development';
		
		
-- List frequency counts (descending order) of all employee last names

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY count(last_name) desc;
		