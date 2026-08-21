
/*say "What is your favorite number?"
PULL user
say user || " is an interesting number. Though, " || user + 1 || " is a little -
    bit better don't you think?"*/

SAY "What is your favorite number?"
user = .stdin~lineIn()
SAY user || " is an interesting number. Though, " || user + 1 || " is a little -
    bit better don't you think?"
