SET SERVEROUTPUT ON;

DECLARE
    v_annual NUMBER;
    v_tax    NUMBER;
    v_dept   VARCHAR2(50);
BEGIN
    v_annual := fn_annual_salary(5000);
    v_tax    := fn_calculate_tax(v_annual);
    v_dept   := fn_dept_name(20);

    DBMS_OUTPUT.PUT_LINE('Test Monthly $5000 -> Annual: $' || v_annual);
    DBMS_OUTPUT.PUT_LINE('Test Annual $' || v_annual || ' -> Tax: $' || v_tax);
    DBMS_OUTPUT.PUT_LINE('Test Dept ID 20 -> Name: ' || v_dept);
END;
/
