-- this is a scratch paper of sorts for myself

num = 84
say num
say num~subChar(1)

LOOP WHILE num~length < 4 -- make sure the passed number is always 4 digits
  num = 0 || num -- add zeros to the beginning
END

SAY num
say num~subChar(1)
say num~subChar(2)
say num~subChar(3)
say num~subChar(4)