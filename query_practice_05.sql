-- total number of employees
SELECT COUNT(emp_no) FROM employees;

-- total number of departments
SELECT COUNT(dept_no) as number_departments FROM departments;

-- total number of employees within each department
SELECT d.dept_no, COUNT(e.emp_no) AS num_employees
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
GROUP BY d.dept_no;