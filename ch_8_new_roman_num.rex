
SAY .Roman~newNum(1984)
SAY
SAY .Roman~newNum(984)
SAY
SAY .Roman~newNum(84)
SAY
SAY .Roman~newNum(4)
SAY
SAY .Roman~newNum(1999) -- From answer key. Should be MCMXCIX
SAY
SAY .Roman~newNum(1992)
SAY
SAY .Roman~newNum(2004)
SAY
-- The following are from Wikipedia, retrieved 9/22/26.
SAY .Roman~newNum(39) -- Should be: XXXIX
SAY
SAY .Roman~newNum(246) -- CCXLVI
SAY
SAY .Roman~newNum(789) -- DCCLXXXIX
SAY
SAY .Roman~newNum(2421) -- MMCDXXI
SAY
SAY .Roman~newNum(160) -- CLX
SAY
SAY .Roman~newNum(207) -- CCVII
SAY
SAY .Roman~newNum(1009) -- MIX
SAY
SAY .Roman~newNum(1066) -- MLXVI
SAY
SAY .Roman~newNum(1776) -- MDCCLXXVI
SAY
SAY .Roman~newNum(1918) -- MCMXVIII
SAY
SAY .Roman~newNum(1944) -- MCMXLIV
SAY
SAY .Roman~newNum(2026) -- MMXXVI
SAY
SAY .Roman~newNum(3999) -- MMMCMXCIX

/* Directives */
::CLASS Roman
::METHOD newNum CLASS
  USE ARG num
  IF num <= 0 | num >= 4_000 THEN
    RAISE USER error DESCRIPTION "Must use positive integer less than 4,000"

  chopped_num = num

  LOOP WHILE chopped_num~length < 4 -- make sure the passed number is always 4 digits
    chopped_num = 0 || chopped_num -- add zeros to the beginning
  END

  roman = "M"~copies(chopped_num~subChar(1))

  IF chopped_num~subChar(2) == 9 THEN
    roman = roman || "CM" -- 1000(M) - 100(C) = 900
  ELSE IF chopped_num~subChar(2) == 4 THEN
    roman = roman || "CD" -- 500(D) - 100(C) = 400
  ELSE DO
    roman = roman || "D"~copies(chopped_num~subChar(2) % 5) -- repeat "D" by the correct amount
    roman = roman || "C"~copies(chopped_num~subChar(2)~modulo(5)) -- repeat "C" by the correct amount
  END

  IF chopped_num~subChar(3) == 9 THEN
    roman = roman || "XC" -- 100(C) - 10(X) = 90
  ELSE IF chopped_num~subChar(3) == 4 THEN
    roman = roman || "XL" -- 50(L) - 10(X) = 40
  ELSE DO
    roman = roman || "L"~copies(chopped_num~subChar(3) % 5)
    roman = roman || "X"~copies(chopped_num~subChar(3)~modulo(5))
  END

  IF chopped_num~subChar(4) == 9 THEN
    roman = roman || "IX" -- 10(X) - 1(I) = 9
  ELSE IF chopped_num~subChar(4) == 4 THEN
    roman = roman || "IV" -- 5(V) - 1(I) = 4
  ELSE DO
    roman = roman || "V"~copies(chopped_num~subChar(4) % 5)
    roman = roman || "I"~copies(chopped_num~subChar(4)~modulo(5))
  END

  SAY num
  RETURN roman
