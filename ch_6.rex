/* Chapter 6 */

/* Comparison Methods */
SAY 1 > 2
SAY 1 < 2
SAY
SAY 5 >= 5
SAY 5 <= 4
SAY
SAY 1 == 1
SAY 2 \= 1
SAY
SAY "cat" < "dog" -- cat comes before dog in dictionary
SAY "a giant woman" < "Watermelon Steven" -- uppercase comes before lowercase
SAY "a giant woman"~lower < "Watermelon Steven"~lower
SAY
SAY 2 < 10 -- 2 is less than 10, true
SAY "2" < "10" -- However, the "2" character comes before the "1" character
SAY

/* Branching */
-- Example 1
SAY "Hello, what's your name?"
user_name = .stdin~lineIn()
SAY "Hello, " user_name || "."

IF user_name == "Chris"
  THEN SAY "What a lovely name!"
SAY

-- Example 2
SAY "I am a fortune-teller. Tell me your name:"
user_name = .stdin~lineIn()

IF user_name == "Chris" THEN -- if only one statement follows, don't need "DO"
  SAY "I see great things in your future."
ELSE DO -- If more than one statement follows, include "DO"
  SAY "Your future is...oh my! Look at the time!"
  SAY "I really have to go. Sorry!"
END
SAY

-- Example 3
SAY "Hello, and welcome to seventh grade English."
SAY "My name is Mrs. Gabbard. And your name is...?"
user_name = .stdin~lineIn()

IF user_name == .MyStrings~capitalize(user_name) THEN
  SAY "Please take a seat," user_name || "."
ELSE DO
  SAY user_name || "? You mean" .MyStrings~capitalize(user_name) || ", right?"
  SAY "Don't you even know how to spell your name??"
  user_reply = .stdin~lineIn()

  IF user_reply~lower == "yes" THEN
    SAY "Hmmph! Well, sit down!"
  ELSE
    SAY "GET OUT!!"
END
SAY

/* Looping */
-- Example 1
-- This loops forever, let me out!
-- user_input = ""
-- DO WHILE user_input /= "bye"
--   SAY input
--   input = .stdin~lineIn()
-- END
-- SAY "Come again soon!"

-- Example 2
-- NOT A REAL PROGRAM
-- DO WHILE just_like_go_forever
--   user_input = .stdin~lineIn()
--   SAY user_input
--   IF user_input == "bye" THEN
--     stop_looping
-- END

-- THIS IS TOTALLY A REAL PROGRAM
SAY "Buffy"~upper
DO WHILE "Spike" > "Angel"
  user_input = .stdin~lineIn()
  SAY user_input
  IF user_input == "bye" THEN
    LEAVE
END

SAY "Come again soon!"
SAY

-- Example 3
SAY "loop with true object"~upper
DO WHILE .true
  user_input = .stdin~lineIn()
  SAY user_input
  IF user_input == "bye" THEN
    LEAVE
END

SAY "Come again soon!"
SAY

/* A Little Bit of Logic */
-- Example 1
SAY "Chris or Katy"~upper
SAY "Hello, what's your name?"
user_name = .stdin~lineIn()
SAY "Hello," user_name

IF user_name == "Chris" THEN
  SAY "What a lovely name!"
ELSE IF user_name == "Katy" THEN
  SAY "What a lovely name!"
SAY

-- Example 2
-- The logical "or" operator: |
SAY "Chris or Katy with logical 'or'"~upper
SAY "Hello, what's your name?"
user_name = .stdin~lineIn()
SAY "Hello," user_name

IF user_name == "Chris" | user_name == "Katy" THEN
  SAY "What lovely name!"
SAY

/* Other Logical Operators */
i_am_chris = .true
i_am_purple = .false
i_like_beer = .true
i_eat_rocks = .false

SAY i_am_chris & i_like_beer -- and
SAY i_like_beer & i_eat_rocks
SAY i_am_purple & i_like_beer
SAY i_am_purple & i_eat_rocks
SAY
SAY i_am_chris | i_like_beer -- or
SAY i_like_beer | i_eat_rocks
SAY i_am_purple | i_like_beer
SAY i_am_purple | i_eat_rocks
SAY
SAY \i_am_purple -- not
SAY \i_am_chris
SAY

-- Last Example
SAY "C Pine and Ruby Pine"
DO WHILE .true
  SAY "What would you like to ask C to do?"
  request = .stdin~lineIn()

  SAY "You SAY: C, please" request || "."

  SAY "C responds:"
  SAY "C" request
  SAY "Papa" request || ", too"
  SAY "Mama" request || ", too"
  SAY "Ruby" request || ", too"

  IF request == "stop" THEN
    LEAVE
END

/* Ch. 6 is continued in ch_6_99_bottles.rb, ch_6_deaf_grandma.rb
 and ch_6_leap_years.rb */

::REQUIRES "matt_utilities.rex"