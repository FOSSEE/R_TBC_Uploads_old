no_of_white_flags = 4
no_of_red_flags = 3
no_of_blue_flags = 2

ans = factorial(no_of_white_flags + no_of_red_flags + no_of_blue_flags) / (factorial(no_of_white_flags) * factorial(no_of_red_flags) * factorial(no_of_blue_flags))

print(ans)