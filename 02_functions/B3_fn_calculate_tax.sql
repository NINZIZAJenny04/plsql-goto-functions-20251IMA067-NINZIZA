SQL>  CREATE OR REPLACE FUNCTION fn_calculate_tax (
     p_annual_salary IN NUMBER) RETURN NUMBER IS
    BEGIN
    IF p_annual_salary <= 30000 THEN
     v_tax := p_annual_salary * 0.10;
     ELSIF p_annual_salary <= 60000 THEN
     v_tax := p_annual_salary * 0.18;
    ELSE
      v_tax := p_annual_salary * 0.25;
   ENDIF;
   RETURN v_tax;
   END fn_calculate_tax;
   /
