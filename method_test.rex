
x = .Object~enhanced(.methods)
x~double_this(44)

.Multiply_this~double_this1(44)

/* Directives */
::METHOD double_this -- floating method
    USE ARG num
    num_times_2 = num * 2
    SAY num "doubled is" num_times_2


::CLASS Multiply_this
::METHOD double_this1 CLASS
    USE ARG num
    num_times_2 = num * 2
    SAY num "doubled is" num_times_2
