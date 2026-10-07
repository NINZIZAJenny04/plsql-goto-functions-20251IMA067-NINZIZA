SQL> CREATE OR REPLACE FUNCTION fn_validate_payroll (
     p_emp_id IN NUMBER
    ) RETURN VARCHAR2 IS
     v_monthly_sal employees.salary%TYPE;
    v_hire_date   employees.hire_date%TYPE;
     v_annual_sal  NUMBER;
     v_tax         NUMBER;
    BEGIN
    SELECT salary, hire_date
     INTO v_monthly_sal, v_hire_date
   FROM employees
    WHERE employee_id = p_emp_id;
   IF v_monthly_sal IS NULL OR v_monthly_sal <= 0 THEN
    RETURN 'INVALID: Salary must be greater than zero.';
   END IF;
   IF v_hire_date > SYSDATE THEN
    RETURN 'INVALID: Hire date is in the future.';
   END IF;
    v_annual_sal := fn_annual_salary(v_monthly_sal);
    v_tax := fn_calculate_tax(v_annual_sal);
    RETURN 'VALID: Annual Salary = $' || v_annual_sal ||           ', Estimated Tax = $' || v_tax;
   EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RETURN 'INVALID: Employee ID ' || p_emp_id || ' does not exist.';
    WHEN OTHERS THEN
   RETURN 'ERROR: Processing failed for Employee ID ' || p_emp_id;
    END fn_validate_payroll;
 /

   
