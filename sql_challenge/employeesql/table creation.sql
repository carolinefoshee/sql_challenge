-- Create tables

CREATE TABLE departments(
	id VARCHAR(4) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(ID));
	
CREATE TABLE titles(
	id VARCHAR(5) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY(ID));	

CREATE TABLE employees(
	id SERIAL PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(ID),
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date VARCHAR(10) NOT NULL);

CREATE TABLE dept_emp(
	emp_no integer NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	foreign key (emp_no) REFERENCES employees(ID),
	foreign key (dept_no) REFERENCES departments(ID));
	
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no integer NOT NULL,
	foreign key (emp_no) REFERENCES employees(ID),
	foreign key (dept_no) REFERENCES departments(ID));	
	
CREATE TABLE salaries(
	emp_no integer NOT NULL,
	salary float NOT NULL,
	foreign key (emp_no) REFERENCES employees(ID));

