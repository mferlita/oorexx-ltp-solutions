
SAY "Give me some words and I'll sort them."
words = .Array~new

LOOP WHILE .true -- you could also just say loop forever
  guest = .stdin~lineIn()
  IF guest~length = 0 THEN LEAVE
  words~append(guest)
END
SAY

sorted_words = words~sort

SAY "Here you go:" sorted_words~makeString("L", " ")
SAY
SAY "Or just:"
SAY words~sort
