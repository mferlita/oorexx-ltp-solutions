
title = "Table of Contents"
line_width = 50

-- ooRexx offers a nice Array term syntax for writing arrays with.
-- For example,
-- foods = "apple", "cake", "lasagna"
-- is an array.
-- For neatly writing arrays, use the - character to continue onto the next
-- line.
chapters = ("Numbers", 1), -
           ("Letters", 5), -
           ("Variables", 9)

chap_num = 1

SAY title~center(line_width)
SAY
LOOP chap OVER chapters
  name = chap[1]
  page = chap[2]
  beginning = "Chapter" chap_num":" name
  ending = "page" page
  chap_num = chap_num + 1
  SAY beginning~left(line_width/2) || ending~right(line_width/2)
END
