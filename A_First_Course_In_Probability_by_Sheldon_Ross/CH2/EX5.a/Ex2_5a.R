#install.packages("MASS")
require(MASS)

favourable_outcomes = 6
total_outcomes = 36

ans = favourable_outcomes / total_outcomes

print(fractions(ans))