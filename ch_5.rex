/* Chapter 5 */

--Fancy String Methods
var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "....TCELES B HSUP - A magic spell?"

SAY var1~reverse
SAY var2~reverse
SAY var3~reverse
SAY var1
SAY var2
SAY var3
SAY ""

SAY "What is your first name?"
f_name = .stdin~lineIn()
SAY "What is your middle name?"
m_name = .stdin~lineIn()
SAY "What is your last name?"
l_name = .stdin~lineIn()
SAY "Did you know there" f_name~length + m_name~length + l_name~length -
    "characters"
SAY "in your name," f_name m_name l_name"?"
SAY ""

letters = "aAbBcCdDeE"
SAY letters~upper "-- upper"
SAY letters~lower "-- lower"
-- ooRexx doesn't have a simple equivalent to these Ruby methods,
-- so we'll have to write our own.
-- Directives, like ::METHOD and ::CLASS, etc, go at the end of an ooRexx
-- program.
-- puts letters.swapcase
-- puts letters.capitalize
-- puts "a".capitalize
SAY .MyStrings~swapcase(letters) "-- swapcase"
SAY .MyStrings~capitalize(letters) "-- capitalize"
SAY .MyStrings~capitalize("a") "-- capitalize"
SAY letters
SAY ""

line_width = 50
SAY "Old Mother Hubbard"~center(line_width)
SAY "Sat in her cupboard"~center(line_width)
SAY "Eating her curds and whey,"~center(line_width)
SAY "When along came a spider"~center(line_width)
SAY "Who sat down beside her"~center(line_width)
SAY "And scared her poor shoe dog away"~center(line_width)
SAY ""

line_width = 40
str = "==> text <=="
SAY str~left(line_width)
SAY str~center(line_width)
SAY str~right(line_width)
SAY str~left(line_width/2) || str~right(line_width/2)
SAY ""

-- continued in ch_5_angry_boss.rex and ch_5_table_of_contents.rex

-- More Arithmetic
SAY 5**2 --exponentiation, everything to the right of ** must be whole number
SAY RxCalcPower(5,0.5) -- Same as Ruby's exponentiation. Needs RxMath library.
SAY 7%3 --integer division
SAY 7~modulo(3) --modulus method gives remainder
SAY 7//3 --gives remainder but not modulus
SAY 365~modulo(7)
SAY ""

-- absolute value
SAY (5-2)~abs
SAY (2-5)~abs
SAY ""

-- random numbers
-- RANDOM(min,max,seed) or just RANDOM(max)
-- ooRexx's RANDOM number generator only works with integers/whole numbers
-- As such, floats will not be produced without further processing
-- ooRexx's random number generator can only go up to 999,999,999
SAY RANDOM()
SAY RANDOM()
SAY RANDOM()
SAY RANDOM(100)
SAY RANDOM(100)
SAY RANDOM(1)
SAY RANDOM(1)
SAY RANDOM(1)
SAY RANDOM(999999999) -- 999,999,999
SAY "My weather app says there is a"
SAY RANDOM(101)"% chance of rain,"
SAY "but it's literally raining right now!"
SAY ""

-- setting the seed
SAY RANDOM(,,1976)
SAY RANDOM(100)
SAY RANDOM(100)
SAY RANDOM(100)
SAY ""
SAY RANDOM(,,1976)
SAY RANDOM(100)
SAY RANDOM(100)
SAY RANDOM(100)
SAY ""


-- The Math Object
-- ooRexx has no math object.
-- In order to use more sophisticated math, use ooRexx's RxMath library.
SAY RxCalcPi()
SAY RxCalcExp(1) -- Euler's number
SAY RxCalcCos(RxCalcPi()/3,16,r)
SAY RxCalcTan(RxCalcPi()/4,16,r)
SAY RxCalcLog(RxCalcExp(1)**2)
SAY (1 + RxCalcSqrt(5)) / 2 -- golden ratio

-- Directives
::REQUIRES 'rxmath' LIBRARY

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
