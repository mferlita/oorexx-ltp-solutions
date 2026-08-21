
bye_count = 0

SAY 'HELLO, DEARY!'

LOOP
  grandchild = .stdin~lineIn()
  IF grandchild \== grandchild~upper THEN DO
    bye_count = 0
    SAY 'HUH?! SPEAK UP, DEAR!'
  END
  ELSE IF grandchild == 'bye'~upper THEN DO
    bye_count = bye_count + 1
    IF bye_count == 3 THEN DO
      SAY "GOODBYE, DEARY!"
      LEAVE
    END
  END
    ELSE DO
      bye_count = 0
      SAY "NO, NOT SINCE" RANDOM(1930,1950)"!"
    END
END
