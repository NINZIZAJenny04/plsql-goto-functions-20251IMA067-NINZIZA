CREATE OR REPLACE FUNCTION fn_annual_salary (
  2   p_monthly_salary IN NUMBER) RETURN NUMBER IS
  3  BEGIN
  4   IF p_monthly_salary IS NULL OR p_monthly_salary < 0 THEN
  5   RETURN 0;
  6   END IF;
  7  RETURN p_monthly_salary * 12;
  8  END fn_annual_salary;
  9  /
