--Question 1--
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--Question 2--
SELECT emp_no, first_name, last_name, hire_date from employees
WHERE hire_date LIKE '1986-%';

--Question 3--
SELECT departments.dept_name, dept_employees.dept_no, dept_employees.emp_no, employees.first_name, employees.last_name, dept_employees.from_date, dept_employees.to_date
FROM dept_employees
INNER JOIN employees ON
employees.emp_no=dept_employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_employees.dept_no

--Question 4--
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_employees
INNER JOIN employees ON
employees.emp_no=dept_employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_employees.dept_no

--Question 5--
SELECT first_name, last_name from employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--Question 6--
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_employees
INNER JOIN employees ON
employees.emp_no=dept_employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_employees.dept_no
WHERE dept_name='Sales'

--Question 7--
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_employees
INNER JOIN employees ON
employees.emp_no=dept_employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_employees.dept_no
WHERE dept_name='Sales' or dept_name='Development'

--Question 8--
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) desc
