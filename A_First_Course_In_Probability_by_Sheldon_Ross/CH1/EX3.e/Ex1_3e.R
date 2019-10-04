no_of_russians = 4
no_of_americans = 3
no_of_brits = 2
no_of_brazillians = 1

ans = factorial(no_of_brazillians + no_of_americans + no_of_brits + no_of_russians) / (factorial(no_of_russians)*factorial(no_of_brits)*factorial(no_of_americans)*factorial(no_of_brazillians))

print(ans)