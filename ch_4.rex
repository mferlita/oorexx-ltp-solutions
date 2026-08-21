/* Chapter 4 */

/* Conversions and Input */

-- Everything in ooRexx is already a string and uses decimal arithmetic instead
-- of binary. Depending on context, ooRexx automatically performs conversions
-- between strings and numbers. However, certain functions, methods, and
-- arithmetic tricks can be used for explicit conversion.

-- Here, ooRexx adds these variables together as numbers, resulting in 7
var1 = 2
var2 = "5"
SAY var1 + var2
SAY ""

-- However, if we want to simply concatenate the characters we do this:
var1 = 2
var2 = "5"
SAY var1 || var2
SAY ""

-- The ~format method is quite nice for setting the precision of a number.
-- number~format(before,after,expp,expt)
SAY "15"~format(,1)
SAY "15" + 0 -- forces numeric output
SAY "99.999" + 0
SAY "99.999"~trunc
SAY "99.999" % 1
SAY ""
-- ooRexx can't do these without writing your own methods.
-- If you try to force these strings to be numeric values,
-- it results in an error.
-- puts "5 is my favorite number!".to_i
-- puts "Who asked you about 5 or whatever?".to_i
-- puts "Your momma did.".to_f
SAY "stringy"~string
SAY 3~trunc
SAY 3 % 1
SAY ""

/* Let Me Tell You a Secret */
SAY 20
SAY "20"
SAY ""

/* Getting Strings from the User */

--ooRexx offers a couple of ways to get user input.
--PULL keyword - automatically removes the trailing newline and forces uppercase
-- .stdin~lineIn() - automatically removes trailing newline but preserves case

/* Cleaning Up User Input */
--SAY "Hello there, and what's your name?"
--PULL name
--SAY "Your name is " || name || "? What a lovely name!"
--SAY "Pleased to meet you, " || name || ". :)"

SAY "Hello there, and what's your name?"
name = .stdin~lineIn()
SAY "Your name is " || name || "? What a lovely name!"
SAY "Pleased to meet you, " || name || ". :)"

/* Ch. 4 continued in ch_4_greeting.rex and ch_4_fav_num.rex */
