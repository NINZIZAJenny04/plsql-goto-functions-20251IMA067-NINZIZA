SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Emp 101: ' || fn_validate_payroll(101));
    DBMS_OUTPUT.PUT_LINE('Emp 102: ' || fn_validate_payroll(102));
    DBMS_OUTPUT.PUT_LINE('Emp 999: ' || fn_validate_payroll(999)); -- Test Non-existent
END;
/
