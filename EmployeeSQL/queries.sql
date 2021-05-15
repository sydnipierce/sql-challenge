-- List emp #, last + first name, sex, salary
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s ON
e.emp_no=s.emp_no;

-- List first + last name, hire date for hire year = 1986
Select first_name, last_name, hire_date FROM employees
WHERE DATE_PART('year', hire_date) = 1986;