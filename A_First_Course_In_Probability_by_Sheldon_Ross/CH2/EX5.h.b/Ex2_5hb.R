total_cards = 52
suite_size = 13

no_of_aces = 4
ace_per_suite = 1

ans = (factorial(no_of_aces)* (factorial(total_cards - no_of_aces)/ factorial(suite_size - ace_per_suite)^4)) / (factorial(total_cards) / factorial(suite_size)^4)

print(ans)
