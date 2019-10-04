no_of_p = 3
no_of_r = 1
no_of_e = 2

total_chars = no_of_p + no_of_r + no_of_e

ans = factorial(total_chars)/ (factorial(no_of_p) * factorial(no_of_r) * factorial(no_of_e))

print(ans)