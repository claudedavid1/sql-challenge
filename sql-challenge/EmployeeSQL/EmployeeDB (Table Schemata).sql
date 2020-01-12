-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/GBHys0
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" Integer   NOT NULL,
    "dept_name" Varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" Integer   NOT NULL,
    "dept_no" Integer   NOT NULL,
    "from_date" Integer   NOT NULL,
    "to_date" Integer   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" Integer   NOT NULL,
    "emp_no" Integer   NOT NULL,
    "from_date" Integer   NOT NULL,
    "to_date" Integer   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" Integer   NOT NULL,
    "birth_date" Integer   NOT NULL,
    "first_name" Varchar   NOT NULL,
    "last_name" Varchar   NOT NULL,
    "gender" Varchar   NOT NULL,
    "hire_date" Integer   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" Integer   NOT NULL,
    "salary" Integer   NOT NULL,
    "from_date" Integer   NOT NULL,
    "to_date" Integer   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" Integer   NOT NULL,
    "title" Varchar   NOT NULL,
    "from_date" Integer   NOT NULL,
    "to_date" Integer   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

