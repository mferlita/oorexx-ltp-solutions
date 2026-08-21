
SAY "Hello, what's your first name?"
first_name = .stdin~lineIn()
SAY "And your middle name?"
middle_name = .stdin~lineIn()
SAY "What about your last name?"
last_name = .stdin~lineIn()
SAY "Hello," first_name middle_name last_name", It's nice to meet you."


-- You could also do this

/*SAY "Hello, what is your full name?"
PARSE PULL first_name middle_name last_name
SAY "Hello," first_name middle_name last_name", It's nice to meet you."*/
