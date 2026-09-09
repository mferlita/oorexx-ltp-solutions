
match_1 = "vanilla", "chocolate"
match_2 = "rhubarb", "pistachio"
match_3 = .Array~new -- this will hold the winners from 1 & 2
winner = .nil -- this will hold the final winner

SAY "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
SAY
SAY "MATCH 1: Which flavor is best?"
match_3[1] = .FlavorTour~askForWinner(match_1)
SAY
SAY "MATCH 2: Which flavor is best?"
match_3[2] = .FlavorTour~askForWinner(match_2)
SAY
SAY "CHAMPIONSHIP MATCH!"
SAY "Which flavor is best?"
winner = .FlavorTour~askForWinner(match_3)
SAY
SAY "And the Ultimate Flavor Champion is:"
SAY winner~upper || "!!"

/* Directives */
::CLASS FlavorTour
::METHOD askForWinner CLASS
  USE ARG flavors
  SAY "1. " || flavors[1]
  SAY "2. " || flavors[2]
  LOOP WHILE .true
    answer = .stdin~lineIn()
    IF (answer == "1" | answer == "2") THEN
      RETURN flavors[answer]
    ELSE SAY "Please answer '1' or '2'."
  END
