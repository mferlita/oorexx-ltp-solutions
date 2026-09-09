
::CLASS MyStrings PUBLIC
::METHOD capitalize CLASS
    USE ARG stringy
    IF stringy = "" THEN
      RETURN stringy
    RETURN stringy~left(1)~upper || stringy~substr(2)~lower

::METHOD swapCase CLASS
    USE ARG stringy
    uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    lowercase = "abcdefghijklmnopqrstuvwxyz"
    RETURN translate(stringy, lowercase || uppercase, uppercase || lowercase)

    optio