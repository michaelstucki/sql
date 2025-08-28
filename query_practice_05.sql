-- 01: total number of employees
SELECT COUNT(emp_no) FROM employees;

-- 02: total number of departments
SELECT COUNT(dept_no) as number_departments FROM departments;

-- 03: total number of employees within each department
SELECT d.dept_no, COUNT(e.emp_no) AS num_employees
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
GROUP BY d.dept_no;

-- 04: the five employees who worked at the company the longest
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date
FROM employees e
ORDER BY e.hire_date DESC
LIMIT 5;