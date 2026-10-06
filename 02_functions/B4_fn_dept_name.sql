
SQL> CREATE OR REPLACE FUNCTION fn_dept_name (
  2   p_dept_id IN NUMBER) RETURN VARCHAR2 IS
  3   v_dept_name departments.department_name%TYPE;
  4  BEGIN
  5   SELECT department_name
  6  INTO v_dept_name
  7  FROM departments
  8  WHERE department_id = p_dept_id;
  9   RETURN v_dept_name;
 10  EXCEPTION
 11  WHEN NO_DATA_FOUND THEN
 12   RETURN 'Unknown Department';
 13   WHEN OTHERS THEN
 14   RETURN 'Error Retrieving Department';
 15  END fn_dept_name;
 16  /
