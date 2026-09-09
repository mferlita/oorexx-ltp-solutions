/* Chapter 8 */

/* flavor tournament */
match_1 = "vanilla", "chocolate"
match_2 = "rhubarb", "pistachio"
match_3 = .Array~new -- this will hold the winners from 1 & 2
winner = .nil -- this will hold the final winner

SAY "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
SAY
SAY "MATCH 1: Which flavor is best?"
SAY "1. " || match_1[1]
SAY "2. " || match_1[2]

LOOP WHILE .true
  answer = .stdin~lineIn()~lower
  IF (answer == "1" | answer == "2") THEN DO
    match_3[1] = match_1[answer]
    LEAVE
  END
  ELSE
    SAY "Please answer '1' or '2'."
END

SAY
SAY "MATCH 2: Which flavor is best?"
SAY "1. " || match_2[1]
SAY "2. " || match_2[2]
LOOP WHILE .true
  answer = .stdin~lineIn()~lower
  IF (answer == "1" | answer == "2") THEN DO
    match_3[2] = match_2[answer]
    LEAVE
  END
  ELSE
    SAY "Please answer '1' or '2'."
END

SAY
SAY "CHAMPIONSHIP MATCH!"
SAY "Which flavor is best?"
SAY "1. " || match_3[1]
SAY "2. " || match_3[2]
LOOP WHILE .true
  answer = .stdin~lineIn()~lower
  IF (answer == "1" | answer == "2") THEN DO
    winner = match_3[answer]
    LEAVE
  END
  ELSE
    SAY "Please answer '1' or '2'."
END

SAY
SAY "And the Ultimate Flavor Champion is:"
SAY winner~upper"!!"
SAY

-- I had to puzzle this for a minute.
-- So, ooRexx doesn't do methods quite like Ruby.
-- Where Ruby is more implicit, ooRexx is more explicit.
-- Also, directives like ::CLASS and ::METHOD, go at the end of an ooRexx
-- program.
.Cow~sayMoo
SAY

/* Method Arguments: What Goes In */
.Cow1~sayMoo1(3)
SAY "oink-oink"
SAY

-- This last line should give an error
-- because the argument is missing
--cow1~say_moo1


/* Local Variables: What's Inside */
.Multiply~doubleThis(44)
SAY num_times_2~string -- This will not work. Prints num_times_2 as a string.
SAY

tough_var = "You can't even touch my variable!"
.Test~littlePest(tough_var)
SAY tough_var
SAY

/* Return Variables: What Comes Out */
return_val = SAY "This say returned:"
SAY return_val -- it returns the whole value of return_val as a string
SAY


SAY .Cow2~sayMoo2(3)
SAY

speak = .Cow2~sayMoo2(3)
SAY .MyStrings~capitalize(speak) || ", dude..."
SAY speak || "."
SAY

SAY .FavFoodAndDrink~favoriteFood("Rimmer")
SAY .FavFoodAndDrink~favoriteFood("Lister")
SAY .FavFoodAndDrink~favoriteFood("Cassandra")
SAY .FavFoodAndDrink~favoriteDrink("Kathryn")
SAY .FavFoodAndDrink~favoriteDrink("Q")
SAY .FavFoodAndDrink~favoriteDrink("Jean-Luc")
SAY

/* Flavor Tournament Redux */
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

/* Ch. 8 is continued in ch_8_more_flav_comp.rex, ch_8_old_roman_num.rex, and
ch_8_new_roman_num.rex */

/* Directives */
::REQUIRES "matt_utilities.rex"

::CLASS Cow
::METHOD sayMoo CLASS
    SAY "mooooooo... "
--------------------------------------------------------------------------------
::CLASS Cow1
::METHOD sayMoo1 CLASS
    USE ARG number_of_moos
    SAY "mooooooo... "~copies(number_of_moos)
--------------------------------------------------------------------------------
::CLASS Multiply
::METHOD doubleThis CLASS
    USE ARG num
    num_times_2 = num * 2
    SAY num "doubled is" num_times_2
--------------------------------------------------------------------------------
::CLASS Test
::METHOD littlePest CLASS
    USE ARG tough_var
    tough_var = .nil
    SAY "HAHA! I ruined your variable!"
--------------------------------------------------------------------------------
::CLASS Cow2
::METHOD sayMoo2 CLASS
    USE ARG number_of_moos
    SAY "mooooooo... "~copies(number_of_moos)
    RETURN "yellow submarine" -- no implicit return value. Use explicit RETURN.
--------------------------------------------------------------------------------
::CLASS FavFoodAndDrink
::METHOD FavoriteFood CLASS
  USE ARG first_name
  IF first_name == "Lister" THEN
    RETURN "vindaloo"
  IF first_name == "Rimmer" THEN
    RETURN "mashed potatos"
  RETURN "hard to say...maybe fried plaintains?"

::METHOD FavoriteDrink CLASS
  USE ARG first_name
  IF first_name == "Jean-Luc" THEN
    RETURN "tea, Earl Grey, hot"
  ELSE IF first_name == "Kathryn" THEN
    RETURN "coffe, black"
  ELSE RETURN "perhaps...horchata?"
--------------------------------------------------------------------------------
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