
CREATE TABLE "titles" (
    "title_id"  varchar NOT NULL,
    "title" varchar   NOT NULL,
	 CONSTRAINT "pk_title_id" PRIMARY KEY (
        "title_id"
     )
   
);

CREATE TABLE "departments" (
    "dept_no" varchar(4)   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_dept_no" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" int NOT NULL,
    "emp_title_id" varchar(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" char   NOT NULL,
    "hire_date" date   NOT NULL,
	 CONSTRAINT "pk_emp_no" PRIMARY KEY (
        "emp_no"
     ),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id) 
 
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" integer   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     ),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);

CREATE TABLE "dept_emp" (
    "emp_no" integer   NOT NULL,
    "dept_no" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);



SELECT * FROM dept_emp
