/* Chapter 1 */

SAY "introduction"~upper
SAY 1 + 2
SAY 3
SAY ""

SAY "floats"~upper
SAY 1.0 + 2.0
SAY 2.0 * 3.0
SAY 5.0 - 8.0
SAY 9.0 / 2.0
SAY ""

SAY "integers"~upper
SAY 1 + 2
SAY 2 * 3
SAY 5 - 8
SAY 9 / 2 -- ooRexx is precise and uses decimal arithmetic, not binary.
SAY 9 % 2 -- For integer division, % is used instead of /
SAY

SAY "complex expressions"~upper
SAY 5 * (12 - 8) + -15
SAY 98 + (59872 / (13 * 8)) * -52
SAY 98 + (59872 % (13 * 8)) * -52
SAY

hours_in_year = 365 * 24
decade_in_minutes = ((60 * 24) * 365) * 10
me_in_seconds = (((60 * 24) * 365) * (.DateTime~new~year - 1992)) * 60
me_in_years = .DateTime~new~year - 1992
mr_pine_age = 1390000000 / (((60 * 24) * 365) * 60) -- 1,390,000,000

SAY "How many hours are in a year?"~upper
SAY "There are" hours_in_year "hours in a year"
SAY

SAY "How many minutes are in a decade?"~upper
SAY "There are" decade_in_minutes "minutes in a decade"
SAY

SAY "How many seconds old are you?"~upper
SAY "I, Matt Ferlita, am" me_in_seconds~format(,,0) "seconds old, or" -
    me_in_years "years old."
SAY

SAY "If I am 1406 million seconds old, how old am I?"~upper
SAY "You are" mr_pine_age~format(,1) "years old, Mr. Pine."
