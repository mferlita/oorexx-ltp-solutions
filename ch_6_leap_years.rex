
SAY 'Please enter a starting year (the earliest year in the range).'
start_year = .stdin~lineIn() + 0
SAY 'Please enter an ending year (the latest year in the range).'
end_year = .stdin~lineIn() + 0
SAY 'The leap years are:'
year = start_year

DO WHILE year <= end_year
  IF year~modulo(4) == 0 THEN DO
    IF year~modulo(100) \== 0 | year~modulo(400) == 0 THEN DO
      SAY year
    END
  END
  year = year + 1
END
