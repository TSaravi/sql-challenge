CREATE TABLE "departments" (
  "id" serial PRIMARY KEY,
  "dept_no" varchar (,
  "dept_name" varchar
);

CREATE TABLE "dept_emp" (
  "dept_no" varchar,
  "emp_no" int,
  PRIMARY KEY ("dept_no", "emp_no")
);

CREATE TABLE "dept_manager" (
  "dept_no" varchar,
  "emp_no" int,
  PRIMARY KEY ("dept_no", "emp_no")
);

CREATE TABLE "employees" (
  "emp_no" int PRIMARY KEY,
  "emp_title_id" varchar,
  "birth_date" date,
  "first_name" varchar,
  "sex" varchar,
  "hire_date" date
);

CREATE TABLE "salaries" (
  "id" serial PRIMARY KEY,
  "emp_no" int,
  "salary" int
);

CREATE TABLE "titles" (
  "title_id" varchar PRIMARY KEY,
  "title" varchar
);
