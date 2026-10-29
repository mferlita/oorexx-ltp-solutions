#!/usr/bin/env rexx

-- note: match_A_B means "round A, match B"
match_1_1 = "vanilla", "chocolate"
match_1_2 = "rhubarb", "pistachio"
match_1_3 = "spumoni", "green tea"
match_1_4 = "cherry", "strawberry"
match_2_1 = .Array~new -- this will hold the winners from 1_1 and 1_2
match_2_2 = .Array~new -- this will hold the winners from 1_3 and 1_4
match_3_1 = .Array~new -- this will hold the winners from 2_1 and 2_2
winner = .nil -- this will hold the final winner

SAY "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
SAY
SAY "ROUND 1, MATCH 1: Which flavor is best?"
match_2_1[1] = .FlavorTourn~ask_for_winner(match_1_1)
SAY
SAY "ROUND 1, MATCH 2: Which flavor is best?"
match_2_1[2] = .FlavorTourn~ask_for_winner(match_1_2)
SAY
SAY "ROUND 1, MATCH 3: Which flavor is best?"
match_2_2[1] = .FlavorTourn~ask_for_winner(match_1_3)
SAY
SAY "ROUND 1, MATCH 4: Which flavor is best?"
match_2_2[2] = .FlavorTourn~ask_for_winner(match_1_4)
SAY
SAY "ROUND 2, MATCH 1: Which flavor is best?"
match_3_1[1] = .FlavorTourn~ask_for_winner(match_2_1)
SAY
SAY "ROUND 2, MATCH 2: Which flavor is best?"
match_3_1[2] = .FlavorTourn~ask_for_winner(match_2_2)
SAY
SAY "CHAMPIONSHIP MATCH!"
SAY "Which flavor is best?"
winner = .FlavorTourn~ask_for_winner(match_3_1)
SAY
SAY "And the Ultimate Flavor Champion is:"
SAY winner~upper || "!!"

/* Directives */
::CLASS FlavorTourn PUBLIC
 ::METHOD ask_for_winner CLASS
   USE ARG flavors
     SAY "1. " || flavors[1]
     SAY "2. " || flavors[2]

   LOOP FOREVER
     answer = .stdin~lineIn()~lower
     IF answer == "1" | answer == "2" THEN
       RETURN flavors[answer]
     ELSE SAY "Please answer '1' or '2'."
   END