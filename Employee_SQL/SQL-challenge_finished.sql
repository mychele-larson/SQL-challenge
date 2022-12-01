-- DATA ANALYSIS

-- 1. List the employee number, last name, first name, gender, and salary of all employees.

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
from employees e
	INNER JOIN salaries s ON e.emp_no = s.emp_no;

-- 2. List the first name, last name and hire date for employees hired in 1986

SELECT 
	e.first_name, 
	e.last_name,
	e.hire_date 
FROM employees e
WHERE e.hire_date <= '12/31/1986' AND e.hire_date >= '01/01/1986';

-- 3. List the manager name and dept number, dept name, employee number, last name & first name.

SELECT 
	d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM departments d
	INNER JOIN dept_manager dm ON dm.dept_no = d.dept_no
	INNER JOIN employees e ON e.emp_no = dm.emp_no;


-- 4. List the dept number, employee number, last name, first name and department name for each employee

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM employees e
	LEFT JOIN dept_emp de ON de.emp_no = e.emp_no
	INNER JOIN departments d ON d.dept_no = de.dept_no;
	
	
-- 5. List first name, last name and gender of employee with first name "Hercules" and last name begins with "B"

SELECT 
	e.first_name,
	e.last_name,
	e.sex
from employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'
AND sex IS NOT NULL;

-- 6. List all employees in Sales Department-including employee number, first name and last name

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM employees e
	INNER JOIN dept_emp de ON de.emp_no = e.emp_no
	INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';


-- 7. List each employee in Sales & Development depts including employee number, first name, last name, 
--	and department name.

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM employees e
	INNER JOIN dept_emp de ON de.emp_no = e.emp_no
	INNER JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR	d.dept_name = 'Development';

-- 8. List frequency counts (descending order) of all employee last names

SELECT 
	e.last_name, COUNT(e.last_name) FROM employees e
GROUP BY 
	e.last_name
ORDER BY 
	count(e.last_name) desc;
		