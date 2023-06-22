-- Question 1
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no)

-- Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%/%/1986';

-- Question 3
SELECT man.emp_no, man.dept_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager man
JOIN departments d
ON (man.dept_no = d.dept_no)
JOIN employees e
ON (man.emp_no = e.emp_no)

-- Question 4
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, n.dept_name
FROM dept_emp d
JOIN employees e
ON (d.emp_no = e.emp_no)
JOIN departments n
ON (d.dept_no = n.dept_no)

-- Question 5
SELECT first_name, last_name, sex
FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Question 6
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no IN
(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no IN
	(
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'
	)
)

-- Question 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
JOIN employees
ON (e.emp_no = f.emp_no)
JOIN departments d
ON (d.emp_no = f.emp_no)
WHERE e.emp_no IN
(
	SELECT e.emp_no
	FROM dept_emp f
	WHERE f.dept_no IN
	(
		SELECT f.dept_no
		FROM departments d
		WHERE d.dept_name= 'Sales' AND dept_name = 'Development'
	)
)

-- Question 8
