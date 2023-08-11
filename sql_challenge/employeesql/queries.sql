-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.id, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON salaries.emp_no = employees.id;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, departments.dept_name, employees.id,  employees.last_name, employees.first_name
FROM dept_manager
JOIN departments
ON departments.id = dept_manager.dept_no
JOIN employees
ON employees.id = dept_manager.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT employees.id, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.id;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.id, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.id
JOIN departments
ON dept_emp.dept_no = departments.id
WHERE departments.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.id, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON dept_emp.emp_no = employees.id
JOIN departments
ON dept_emp.dept_no = departments.id
WHERE departments.dept_name = 'Sales' OR departments.dept_name='Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;