hand_size = 5
total_cards = 52

no_of_straights = 10*(4^5 - 4)
ans = no_of_straights / choose(total_cards, hand_size)

print(ans)