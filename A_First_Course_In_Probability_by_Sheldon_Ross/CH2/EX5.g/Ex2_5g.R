total_hands = 5
total_cards = 52

total_full_houses = 13*12*choose(4,2)*choose(4,3) 
ans = total_full_houses / choose(total_cards, total_hands)

print(ans)
