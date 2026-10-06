SQL>  CREATE OR REPLACE FUNCTION fn_calculate_tax (
  2   p_annual_salary IN NUMBER) RETURN NUMBER IS
  3  BEGIN
  4  IF p_annual_salary <= 30000 THEN
  5   v_tax := p_annual_salary * 0.10;
  6   ELSIF p_annual_salary <= 60000 THEN
  7   v_tax := p_annual_salary * 0.18;
  8  ELSE
  9    v_tax := p_annual_salary * 0.25;
 10  ENDIF;
 11  RETURN v_tax;
 12  END fn_calculate_tax;
 13  /
