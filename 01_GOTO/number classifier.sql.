 SET SERVEROUTPUT ON;
SQL> DECLARE
  2  num NUMBER := &input_number; -- Prompts for input or set statically (e.g., -5, 0, 10)
  3  BEGIN
  4    IF num > 0 THEN
  5   GOTO pos_label;
  6    ELSIF num < 0 THEN
  7   GOTO neg_label;
  8   ELSE
  9    GOTO zero_label;
 10   END IF;
 11   <<pos_label>>
 12  DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is POSITIVE.');
 13   GOTO end_label;
 14   <<neg_label>>
 15  DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is NEGATIVE.');
 16  GOTO end_label;
 17  <<zero_label>>
 18  DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
 19   GOTO end_label;
 20  <<end_label>>
 21  NULL;
 22  END;
 23  /
