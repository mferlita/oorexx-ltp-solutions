
title = "Table of Contents"
line_width = 50

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
  chap_num += 1
  SAY beginning~left(line_width / 2) || ending~right(line_width / 2)
END
