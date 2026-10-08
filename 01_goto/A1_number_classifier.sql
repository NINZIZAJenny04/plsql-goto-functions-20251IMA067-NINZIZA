 SET SERVEROUTPUT ON;
SQL> DECLARE
   num NUMBER := &input_number; -- Prompts for input or set statically (e.g., -5, 0, 10)
    BEGIN
      IF num > 0 THEN
     GOTO pos_label;
      ELSIF num < 0 THEN
     GOTO neg_label;
     ELSE
      GOTO zero_label;
    END IF;
    <<pos_label>>
   DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is POSITIVE.');
    GOTO end_label;
    <<neg_label>>
   DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is NEGATIVE.');
   GOTO end_label;
   <<zero_label>>
   DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
    GOTO end_label;
   <<end_label>>
   NULL;
   END;
  /
