
SQL> SELECT
     employee_id,
    first_name || ' ' || last_name AS full_name,
    salary AS monthly_salary,
     fn_annual_salary(salary) AS annual_salary,
    fn_calculate_tax(fn_annual_salary(salary)) AS tax_amount
  FROM employees;
