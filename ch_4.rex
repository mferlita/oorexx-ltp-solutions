/* Chapter 4 */

/* Conversions and Input */

-- Like in Ruby, everything in ooRexx is an object. However, unlike Ruby,
-- almost everything in ooRexx can produce a string representation.
-- And unlike Ruby, ooRexx uses decimal arithmetic instead of binary arithmetic.
-- Depending on context, ooRexx automatically performs conversions between
-- strings and numbers. However, certain functions, methods, and arithmetic
-- tricks can be used if you need an explicit conversion.

-- Here, ooRexx adds these variables together as numbers, because of the
-- operation performed, resulting in 7
var1 = 2
var2 = "5"
SAY var1 + var2
SAY ""

-- However, if we want to simply concatenate the characters we do this:
var1 = 2
var2 = "5"
SAY var1 || var2
SAY ""

-- The ~format method is nice for controlling how a number is displayed.
-- number~format(before,after,expp,expt)
--
-- However, you should use NUMERIC DIGITS to control the accuracy of ooRexx's
-- calculations. The default is set to 9 decimal places unless explicity
-- changed.
--
SAY "15"~format(,1)
SAY "15" + 0 -- forces numeric output
SAY "99.999" + 0
SAY "99.999"~trunc -- Truncates the decimal portion and makes it an integer
SAY "99.999" % 1 -- integer division
SAY ""
-- If you try to force these next 3 strings to be numeric values,
-- it results in a bad arithmetic conversion error.
-- ooRexx expects strings used as numbers to actually represent numbers.
---- puts "5 is my favorite number!".to_i
---- puts "Who asked you about 5 or whatever?".to_i
---- puts "Your momma did.".to_f
SAY "stringy"~makeString
SAY 3~trunc
SAY 3 % 1
SAY ""

/* Let Me Tell You a Secret */
SAY 20
SAY 20~makeString
SAY "20"
SAY ""

/* Getting Strings from the User */

-- ooRexx offers a couple of ways to get user input.
-- PULL keyword - automatically removes trailing newline but forces uppercase
-- PARSE PULL - same as PULL, but preserves case and then parses the input.
--
-- Both PULL and PARSE PULL read from the external data queue. If the queue is
-- empty, only then does it read from the standard input stream. These are
-- useful in their own right, but there is a more reliable and object-oriented
-- way to get user input:
--
-- .stdin~lineIn() - automatically removes trailing newline but preserves case
-- As you might guess, .stdin~lineIn() reads from the standard input stream and
-- is exactly the same as gets.chomp in Ruby.

/* Cleaning Up User Input */
/* PULL */
SAY "Hello there, and what's your name?"
PULL name
SAY "Your name is " || name || "? What a lovely name!"
SAY "Pleased to meet you, " || name || ". :)"
SAY

/* PARSE PULL */
SAY "Hello there, and what's your name?"
PARSE PULL name
SAY "Your name is " || name || "? What a lovely name!"
SAY "Pleased to meet you, " || name || ". :)"
SAY

/* .stdin~lineIn() */
SAY "Hello there, and what's your name?"
name = .stdin~lineIn()
SAY "Your name is " || name || "? What a lovely name!"
SAY "Pleased to meet you, " || name || ". :)"

/* Ch. 4 continued in ch_4_greeting.rex and ch_4_fav_num.rex */
