/* Chapter 8 */

/* flavor tournament */
match1 = "vanilla", "chocolate"
match2 = "rhubarb", "pistachio"
match3 = .Array~new -- this will hold the winners from 1 & 2
winner = .nil -- this will hold the final winner

SAY "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
SAY
SAY "MATCH 1: Which flavor is best?"
SAY "1. " || match1[1]
SAY "2. " || match1[2]
LOOP WHILE .true
  answer = LINEIN()~lower
  IF (answer == "1" | answer == "2") THEN DO
    match_3[1] = match_1[answer]
    LEAVE
  END
  ELSE DO
    SAY "Please answer '1' or '2'."
  END
END

SAY
SAY "MATCH 2: Which flavor is best?"
SAY "1. " || match_2[1]
SAY "2. " || match_2[2]
LOOP WHILE .true
  answer = LINEIN()~lower
  IF (answer == "1" | answer == "2") THEN DO
    match_3[2] = match_2[answer]
    LEAVE
  END
  ELSE DO
    SAY "Please answer '1' or '2'."
  END
END

SAY
SAY "CHAMPIONSHIP MATCH!"
SAY "Which flavor is best?"
SAY "1. " || match_3[1]
SAY "2. " || match_3[2]
LOOP WHILE .true
    answer = LINEIN()~lower
    IF (answer == "1" | answer == "2") THEN DO
        winner = match_3[answer]
        LEAVE
    END
    ELSE DO
        SAY "Please answer '1' or '2'."
    END
END

SAY
SAY "And the Ultimate Flavor Champion is:"
SAY winner~upper"!!"


-- I had to puzzle this for a minute.
-- So, ooRexx doesn't do methods quite like Ruby.
-- Where Ruby is more implicit, ooRexx is more explicit.
-- Also, directives like ::CLASS and ::METHOD, go at the end of an ooRexx program.
cow = .Cow~new

cow~say_moo


/* Method Arguments: What Goes In */
cow = .Cow~new

cow~say_moo(3)
SAY "oink-oink"

-- This last line should give an error
-- because the argument is missing
--cow~say_moo


/* Local Variables: What's Inside */
multiply = .Multiply_this~new

multiply~double_this(44)
SAY num_times_2~string -- This will not work but will print num_times_2 as a string.

tough_var = "You can't even touch my variable!"
test = .Test~new

test~little_pest(tough_var)
SAY tough_var

/* Return Variables: What Comes Out */
return_val = SAY "This say returned:"
SAY return_val -- it returns the value of return_val as a string

cow = .Cow~new

SAY cow~say_moo1(3)

cow = .Cow~new

x = cow~say_moo(3)
SAY capitalize(x) || ", dude..."
SAY x || "."

SAY favorite_food("Rimmer")
SAY favorite_food("Lister")
SAY favorite_food("Cassandra")
SAY favorite_drink("Kathryn")
SAY favorite_drink("Q")
SAY favorite_drink("Jean-Luc")

/* Flavor Tournament Redux */
--match_1 = ["vanilla", "chocolate"]
--match_2 = ["rhubarb", "pistachio"]
--match_3 = [] # this will hold the winners from 1 & 2
--winner = nil # this will hold the final winner
--
--def ask_for_winner(flavors)
--  SAY "0. "+flavors[0]
--  SAY "1. "+flavors[1]
--
--  WHILE true
--    answer = gets.chomp.downcase
--    IF (answer == "0" || answer == "1")
--      RETURN flavors[answer.to_i]
--    ELSE SAY "Please and '0' or '1'."
--    END
--  END
--END
--
--SAY "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
--SAY
--SAY "MATCH 1: Which flavor is best?"
--match_3[0] = ask_for_winner(match_1)
--SAY
--SAY "MATCH 2: Which flavor is best?"
--match_3[1] = ask_for_winner(match_2)
--SAY
--SAY "CHAMPIONSHIP MATCH!"
--SAY "Which flavor is best?"
--winner = ask_for_winner(match_3)
--SAY
--SAY "And the Ultimate Flavor Championship is:"
--SAY winner.upcase+"!!"

/* Ch. 8 is continued in ch_8_more_flav_comp.rexx, ch_8_old_roman_num.rexx, and
ch_8_new_roman_num.rexx */

 /* Directives */
::CLASS Cow
::METHOD say_moo CLASS
    SAY "mooooooo... "

::CLASS Cow1
::METHOD say_moo1 CLASS
    USE ARG number_of_moos
    SAY "mooooooo... "~copies(number_of_moos)

::CLASS Cow2
::METHOD say_moo2 CLASS
    USE ARG number_of_moos
    SAY "mooooooo... "~copies(number_of_moos)
    RETURN "yellow submarine" -- no implicit return value. Use explicit RETURN.

::CLASS MyStrings
::METHOD capitalize CLASS
    USE ARG stringy
    IF stringy = "" THEN RETURN stringy
    RETURN stringy~left(1)~upper || stringy~substr(2)~lower

::METHOD swapcase CLASS
    USE ARG stringy
    uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    lowercase = "abcdefghijklmnopqrstuvwxyz"
    RETURN translate(stringy, lowercase || uppercase, uppercase || lowercase)

::CLASS Test
::METHOD little_pest CLASS
    USE ARG tough_var
    tough_var = .nil
    SAY "HAHA! I ruined your variable!"

::CLASS Multiply
::METHOD double_this CLASS
    USE ARG num
    num_times_2 = num * 2
    SAY num "doubled is" num_times_2

--::CLASS Cow
--::METHOD say_moo1
--  SAY "mooooooo... " -- this throws an error
