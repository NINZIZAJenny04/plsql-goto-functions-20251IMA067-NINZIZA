
SQL> CREATE OR REPLACE FUNCTION fn_years_of_service (
  2   p_hire_date IN DATE) RETURN NUMBER IS
  3  BEGIN
  4  IF p_hire_date IS NULL OR p_hire_date > SYSDATE THEN
  5    RETURN 0;
  6  ENDIF;
  7  RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
  8  END fn_years_of_service;
  9  /
