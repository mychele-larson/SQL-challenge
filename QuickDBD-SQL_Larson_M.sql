-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vZmZyt
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "DEPARTMENT" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_DEPARTMENT" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "DEPT_MANAGER" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "SALARIES" (
    "emp_no" int   NOT NULL,
    "salary" DECIMAL   NOT NULL
);

CREATE TABLE "DEP_EMPLOYEES" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

CREATE TABLE "EMPLOYEES" (
    "emp_no" INT   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_EMPLOYEES" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "TITLES" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL
);

ALTER TABLE "DEPT_MANAGER" ADD CONSTRAINT "fk_DEPT_MANAGER_dept_no" FOREIGN KEY("dept_no")
REFERENCES "DEPARTMENT" ("dept_no");

ALTER TABLE "SALARIES" ADD CONSTRAINT "fk_SALARIES_emp_no" FOREIGN KEY("emp_no")
REFERENCES "DEPT_MANAGER" ("emp_no");

ALTER TABLE "DEP_EMPLOYEES" ADD CONSTRAINT "fk_DEP_EMPLOYEES_emp_no" FOREIGN KEY("emp_no")
REFERENCES "SALARIES" ("emp_no");

ALTER TABLE "DEP_EMPLOYEES" ADD CONSTRAINT "fk_DEP_EMPLOYEES_dept_no" FOREIGN KEY("dept_no")
REFERENCES "DEPT_MANAGER" ("dept_no");

ALTER TABLE "EMPLOYEES" ADD CONSTRAINT "fk_EMPLOYEES_emp_no" FOREIGN KEY("emp_no")
REFERENCES "DEP_EMPLOYEES" ("emp_no");

ALTER TABLE "TITLES" ADD CONSTRAINT "fk_TITLES_title_id" FOREIGN KEY("title_id")
REFERENCES "EMPLOYEES" ("title_id");

