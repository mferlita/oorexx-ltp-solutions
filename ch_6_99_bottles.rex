
num = 100

DO WHILE num > 1
  IF num > 3 THEN DO
    num = num - 1
    SAY num "bottles of beer on the wall!" num "bottles of beer!"
    SAY "Take one down, pass it around," num - 1 "bottles of beer on the wall!"
    SAY ''
  END
  ELSE IF num == 3 THEN DO
    num = num - 1
    SAY num "bottles of beer on the wall!" num "bottles of beer!"
    SAY "Take one down, pass it around," num - 1 "bottle of beer on the wall!"
    SAY ''
  END
  ELSE DO
    num = num - 1
    SAY num "bottle of beer on the wall!" num "bottle of beer!"
    SAY "Take one down, pass it around, no bottles of beer on the wall!"
  END
END
