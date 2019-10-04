total_cards = 52
suite_size = 13

p_13spades = 1 / choose(total_cards, suite_size)

ans = 4*p_13spades

print(ans)
