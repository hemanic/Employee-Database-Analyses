CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR)

CREATE TABLE dept_employees(
	dept_no VARCHAR,
	emp_no INT,
	from_date VARCHAR,
	to_date VARCHAR)
	
CREATE TABLE titles (
	emp_no INT,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR)	
	
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date VARCHAR,
	to_date VARCHAR)	
	
CREATE TABLE employees (
	emp_no INT,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date VARCHAR)
	
CREATE TABLE manager(
	dept_no VARCHAR,
	emp_no INT,
	from_date VARCHAR,
	to_date VARCHAR)	