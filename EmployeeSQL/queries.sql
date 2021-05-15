-- 1: List emp #, last + first name, sex, salary
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s ON
e.emp_no=s.emp_no;

-- 2: List first + last name, hire date for hire year = 1986
Select first_name, last_name, hire_date FROM employees
WHERE DATE_PART('year', hire_date) = 1986;

-- 3: List dept # + name, manager emp # + last + first name
Select dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager AS dm
LEFT JOIN departments AS d
ON (dm.dept_no=d.dept_no)
	LEFT JOIN employees AS e
	ON (dm.emp_no=e.emp_no);

-- 4: List dept name, emp #, last name, first name
Select de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN departments AS d
ON (de.dept_no=d.dept_no)
	LEFT JOIN employees AS e
	ON (de.emp_no=e.emp_no);
	
-- 5: List first + last name, sex for employees named Hercules B.
Select first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND
	(SELECT substring
		(last_name for 1) = 'B');
		
-- 6: List emp #, last + first name, dept name for Sales dept
Select de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
LEFT JOIN departments AS d
ON (de.dept_no=d.dept_no)
	LEFT JOIN employees AS e
	ON (de.emp_no=e.emp_no)
	WHERE d.dept_name = 'Sales';