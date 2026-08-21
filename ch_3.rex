/* Chapter 3 */

-- variable assignment
my_string = '...you can say that again...'
SAY my_string
SAY my_string
SAY

-- slightly more motivated variable assignment
name = 'Anya Christina Emmanuella Jenkins Harris'
SAY 'My name is ' || name || '.'
SAY 'Wow!' name
SAY 'is a really long name!'
SAY

-- variable reassignment
composer = 'Mozart'
SAY composer || ' was all the rage in his day'
composer = 'Beethoven'
SAY 'But I prefer ' || composer || ', personally.'
SAY

-- variables can point to any object, not just strings
my_own_var = 'just another ' || 'string'
SAY my_own_var

my_own_var = 5 * (1 + 2)
SAY my_own_var
SAY

-- variables can point to just about anything except other variables.
var1 = 8
var2 = var1
SAY var1
SAY var2

SAY

var1 = 'luck'
SAY var1
SAY var2
