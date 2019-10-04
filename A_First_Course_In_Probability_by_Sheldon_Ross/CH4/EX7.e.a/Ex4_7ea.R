no_of_weeks = 2
l = 2 * no_of_weeks
x = 2

ans = 1 - ppois(x, lambda = l)
print(ans)