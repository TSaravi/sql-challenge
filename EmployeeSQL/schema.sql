--Drop table if exists
DROP TABLE if exists departments CASCADE;
DROP TABLE if exists dept_emp CASCADE;
DROP TABLE if exists dept_manager CASCADE;
DROP TABLE if exists employees CASCADE;
DROP TABLE if exists salaries CASCADE;
DROP TABLE if exists titles CASCADE;


CREATE TABLE departments (
  dept_no varchar(10),
  dept_name varchar(50),
  PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
  title_id varchar(10) PRIMARY KEY,
  title varchar(50)
);

CREATE TABLE employees (
  emp_no int PRIMARY KEY,
  emp_title_id varchar(10) REFERENCES titles (title_id),
  birth_date varchar(10),
  first_name varchar(50),
  last_name varchar(50),
  sex varchar(10),
  hire_date varchar(10)
);

CREATE TABLE salaries (
  id serial PRIMARY KEY,
  emp_no int REFERENCES employees (emp_no) ,
  salary int
);


ALTER TABLE employees
ALTER COLUMN birth_date SET DATA TYPE DATE
using to_date(birth_date, 'MM/DD/YYYY');

ALTER TABLE employees
ALTER COLUMN hire_date SET DATA TYPE DATE
using to_date(hire_date, 'MM/DD/YYYY');

CREATE TABLE dept_emp (
  dept_no varchar(10) REFERENCES departments (dept_no),
  emp_no int REFERENCES employees (emp_no),
  PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_manager (
  dept_no varchar(10) REFERENCES departments (dept_no),
  emp_no int REFERENCES employees (emp_no),
  PRIMARY KEY (dept_no, emp_no)
);