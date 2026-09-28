#!/usr/bin/env rexx

/* This method when passed a number between 1 and 3,999 converts it to roman
 numerals (without subtractive notation like IV and IX). */

SAY .Roman~oldNum(1984)
SAY
SAY .Roman~oldNum(984)
SAY
SAY .Roman~oldNum(84)
SAY
SAY .Roman~oldNum(4)
SAY
SAY .Roman~oldNum(1999) -- From answer key. Should be MDCCCCLXXXXVIIII
SAY
SAY .Roman~oldNum(1992)
SAY
SAY .Roman~oldNum(2004)
SAY

-- The following are from Wikipedia, retrieved 9/22/26.
SAY .Roman~oldNum(39)
SAY
SAY .Roman~oldNum(246)
SAY
SAY .Roman~oldNum(789)
SAY
SAY .Roman~oldNum(2421)
SAY
SAY .Roman~oldNum(160)
SAY
SAY .Roman~oldNum(207)
SAY
SAY .Roman~oldNum(1009)
SAY
SAY .Roman~oldNum(1066)
SAY
SAY .Roman~oldNum(1776)
SAY
SAY .Roman~oldNum(1918)
SAY
SAY .Roman~oldNum(1944)
SAY
SAY .Roman~oldNum(2026)
SAY
SAY .Roman~oldNum(3999)
--SAY
--SAY .Roman~oldNum(0)
--SAY
--SAY .Roman~oldNum(4001)

/* Directives */
::CLASS Roman
  ::METHOD oldNum CLASS
    USE ARG num

    IF (num <= 0) | (num >= 4000) THEN
      RAISE SYNTAX 88.900 ARRAY ('Must use a positive integer less than 4,000')

    digit4 = num~right(4,0)

    roman = "M"~copies(digit4~subChar(1))
    roman = roman || "D"~copies(digit4~subChar(2) % 5)
    roman = roman || "C"~copies(digit4~subChar(2)~modulo(5))
    roman = roman || "L"~copies(digit4~subChar(3) % 5)
    roman = roman || "X"~copies(digit4~subChar(3)~modulo(5))
    roman = roman || "V"~copies(digit4~subChar(4) % 5)
    roman = roman || "I"~copies(digit4~subChar(4)~modulo(5))

    SAY num
    RETURN roman
