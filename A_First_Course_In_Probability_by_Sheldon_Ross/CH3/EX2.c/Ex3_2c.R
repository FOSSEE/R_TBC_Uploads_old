total_north_south = 26
suite_size = 13

ans = choose(5,3) * choose(total_north_south - 5, suite_size - 3) / choose(total_north_south, suite_size)

print(ans)