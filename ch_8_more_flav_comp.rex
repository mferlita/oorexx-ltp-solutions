#!/usr/bin/env rexx

/*
1. Put flavors into an array so you can add and subtract flavors easily and
   dynamically create matches and rounds
2. Slice the flavors up into matches (two flavors each match)
3. prompt user which flavor they like better
4. play a match and throw the result into an array for next round
5. play the remaining matches/rounds until only one flavor is left
6. announce winner
*/

flavors = "vanilla", -
          "chocolate", -
          "rhubarb", -
          "pistachio", -
          "moose tracks", -
          "raspberry", -
          "chocolate mint"

SAY "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
SAY
SAY "MATCH 1: Which flavor is best?"
match_3[1] = .FlavorTourn~askForWinner(match_1)
SAY
SAY "MATCH 2: Which flavor is best?"
match_3[2] = .FlavorTourn~askForWinner(match_2)
SAY
SAY "CHAMPIONSHIP MATCH!"
SAY "Which flavor is best?"
winner = .FlavorTourn~askForWinner(match_3)
SAY
SAY "And the Ultimate Flavor Champion is:"
SAY winner~upper || "!!"

/* Directives */
::CLASS FlavorTourn
  ::METHOD pairUp

  ::METHOD askForWinner CLASS
    USE ARG flavors

    SAY "1. " || flavors[1]
    SAY "2. " || flavors[2]

    LOOP FOREVER
      answer = .stdin~lineIn()

      IF (answer == "1" | answer == "2") THEN
        RETURN flavors[answer]
      ELSE SAY "Please answer '1' or '2'."
    END

  ::METHOD playRound