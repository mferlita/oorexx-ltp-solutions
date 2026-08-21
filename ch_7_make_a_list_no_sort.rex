
SAY "Give me some words and I'll make a list for you."
words = .Array~new
list = .Array~new

LOOP WHILE .true
  guest = LINEIN()
  words~append(guest)
  IF guest = "" THEN LEAVE
  words = words~sort
  DO UNTIL words~isEmpty
  list~append(words[1])
  words~remove(1)
  END
END

SAY "Here's your list:" list~makeString("L", ", ")
SAY
SAY "Or:"
SAY list
