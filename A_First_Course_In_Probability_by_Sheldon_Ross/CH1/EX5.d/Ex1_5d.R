no_of_players = 8
no_of_winners = 4

ans1 = factorial(no_of_winners)*choose(no_of_players,no_of_winners)
cat("Ans to a)", ans1, "\n")

ans2 = factorial(no_of_players)
cat("Ans to b)", ans2, "\n")

