 CREATE TABLE departments (    department_id NUMBER PRIMARY KEY,    department_name VARCHAR2(50) NOT NULL);
  CREATE TABLE employees (    employee_id NUMBER PRIMARY KEY,    first_name VARCHAR2(50),    last_name VARCHAR2(50),    salary NUMBER(10,2),    hire_date DATE,    department_id NUMBER,    CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id));
 INSERT INTO departments (department_id, department_name) VALUES (200, 'Finance');
INSERT INTO departments (department_id, department_name) VALUES (100, 'Software Engineering');
INSERT INTO departments (department_id, department_name) VALUES (300, 'Data Analytics');
 INSERT INTO departments (department_id, department_name) VALUES (400, 'Quality Assurance');
INSERT INTO employees (employee_id, first_name, last_name, salary, hire_date, department_id) VALUES (201, 'David', 'willy', 52000, TO_DATE('2019-08-20', 'YYYY-MM-DD'), 100);
 INSERT INTO employees (employee_id, first_name, last_name, salary, hire_date, department_id) VALUES (202, 'Grace', 'Mary', 82000, TO_DATE('2020-02-10', 'YYYY-MM-DD'), 200);
 INSERT INTO employees (employee_id, first_name, last_name, salary, hire_date, department_id) VALUES (203, 'Kenny', 'Rick', 26000, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 300);
