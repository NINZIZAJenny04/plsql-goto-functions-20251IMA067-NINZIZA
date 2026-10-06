SQL> CREATE OR REPLACE FUNCTION fn_validate_payroll (
  2    p_emp_id IN NUMBER) RETURN VARCHAR2 IS
  3    v_monthly_sal employees.monthly_salary%TYPE;
  4   v_hire_date   employees.hire_date%TYPE;
  5  v_annual_sal  NUMBER;
  6   v_tax         NUMBER;
  7  BEGIN
  8   SELECT monthly_salary, hire_date
  9  INTO v_monthly_sal, v_hire_date
 10   FROM employees
 11   WHERE employee_id = p_emp_id;
 12   IF v_monthly_sal IS NULL OR v_monthly_sal <= 0 THEN
 13   RETURN 'INVALID: Salary must be greater than zero.';
 14  ENDIF;
 15   IF v_hire_date > SYSDATE THEN
 16   RETURN 'INVALID: Hire date is in the future.';
 17  ENDIF;
 18   v_annual_sal := fn_annual_salary(v_monthly_sal);
 19    v_tax        := fn_calculate_tax(v_annual_sal);
 20   RETURN 'VALID: Annual Salary = $' || v_annual_sal || ', Estimated Tax = $' ||
 21  v_tax;
 22  EXCEPTION
 23  WHEN NO_DATA_FOUND THEN
 24  RETURN 'INVALID: Employee ID ' || p_emp_id || ' does not exist.';
 25   WHEN OTHERS THEN
 26  RETURN 'ERROR: Processing failed for Employee ID ' || p_emp_id;
 27  END fn_validate_payroll;
 28  /
