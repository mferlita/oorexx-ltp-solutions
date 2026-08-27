
-- Floating Method
floating_method = .Object~enhanced(.methods)
floating_method~double_this(44)

-- Class Method
.MultiplyThis~double_this1(44)

/* Directives */
::METHOD double_this -- floating method
    USE ARG num
    num_times_2 = num * 2
    SAY num "doubled is" num_times_2
--------------------------------------------------------------------------------
::CLASS MultiplyThis
::METHOD double_this1 CLASS
    USE ARG num
    num_times_2 = num * 2
    SAY num "doubled is" num_times_2
