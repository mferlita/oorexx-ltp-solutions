# oorexx-ltp-solutions
My progress and solutions 
for 
[Learn to Program](https://pragprog.com/titles/ltp3/learn-to-program-third-edition/),
3rd Edition, by Chris Pine but in ooRexx. You can download ooRexx and its 
documentation at https://sourceforge.net/projects/oorexx/

Rexx doesn't really have an official style guide. While learning ooRexx, I thought I
should figure something out. I've reviewed the official ooRexx documentation and some
style recommendations from IBM and have come up with the following.

Matt's ooRexx Style Cheat Sheet:

| Element                 | Format        | Examples                |
|-------------------------|---------------|-------------------------|
| Indentation             | 2-4 spaces    |                         |
| Line Length Max         | 80 characters |                         |
| Keyword Instructions    | UPPERCASE     | PARSE<br/>SAY           |
| Built-in Functions      | UPPERCASE     | RANDOM()<br/>CHAROUT()  |
| Directives              | UPPERCASE     | ::CLASS<br/>::INCLUDE   |
| Methods and Routines    | camelCase     | append<br/>appendAll    | 
| Variables               | snake_case    | otherGems<br/>myChapter | 
| Classes                 | PascalCase    | .Array<br/>.DateTime    |
| Boolean and Nil         | lowercase     | .nil<br/>.true          | 
| Environment Directories | lowercase     | .environment<br/>.local | 
| Runtime Values          | lowercase     | .line<br/>.rs           |
| Runtime Collections     | locercase     | .methods<br/>.resources |
| Standard Stream         | lowercase     | .stdin<br/>.stdout      |
| Monitor Stream          | lowercase     | .input<br/>.output      |
| Runtime Info            | PascalCase    | .RexxInfo               |
| Runtime Context         | lowercase     | .context                |

1. Write code that is clear, not clever.
2. Different cases are used for identifiers. See table above.
3. Use meaningful names for variables, routines, classes, and methods.
4. Avoid single character names.
5. Prefer 2 spaces for indentation, 4 max.
6. Prefer 80 character line length.
7. 1 clause per line.
8. Comment generously and explain your intent.
9. Prefer block comments over inline comments.
10. Leave whitespace around operators (a = 1 + 1).
11. Keep routines and methods small.
12. If you call code only once, don't make it a routine or a method.
13. Avoid deeply nested if statements and keep them simple.
14. Align related code.
15. Separate logical sections with blank lines.
16. Prefer object methods over legacy functions.
17. Avoid unnecessary abbreviation.
18. Use clear program headers that explain what your program does.
