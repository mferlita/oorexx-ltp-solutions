/* Chapter 2 */

SAY "printing strings"~upper
SAY "Hello, world!"
SAY
SAY "Good-bye."
SAY

SAY "string arithmetic"~upper
SAY "--ooRexx does not perform string arithmetic like Ruby."
SAY "--It does however perform concatenatation very easily in a couple of ways."
SAY "I like" || "apple pie."
SAY "I like " || "apple pie."
SAY "I like" || " apple pie."
SAY "I like""apple pie."
SAY "I like ""apple pie."
SAY "I like"" apple pie."
SAY "I like" "apple pie"
SAY
SAY "For copying a string multiple times, you can the object-method ~copies() :"
SAY "object-method:" "blink"~copies(4)
SAY "--and with spaces:" "blink "~copies(4)
SAY

SAY "Numbers vs. Digits"~upper
SAY  12  +  12
SAY "12" || "12"
SAY "12  +  12"
SAY  2  *  5
SAY "2"~copies(5)
SAY "2  *  5"
SAY

SAY "When Bad Things Happen to Good Programs"~upper
-- These don't work very well.
--SAY "12" + 12
--SAY '2' * '5'
--SAY 'Marceline' + 12
--SAY 'Finn' * 'Jake'
--SAY 'You're swell!'
--SAY 11 * Apollo
--SAY "They said, "Yes!""
SAY 'ooRexx does not use / to escape apostrophes or backslashes'
SAY 'You''re swell!'
SAY "You're swell!"
SAY 'It''s "fine."'
SAY "It's" '"fine."'
SAY "It's " || '"fine"'
