#install.packages("MASS")
require("MASS")

min = 0
max = 10

ans1 = punif(3, min = min, max = max)
cat("Ans to a)")
print(fractions(ans1))


ans2 = 1 - punif(6, min = min, max = max)
cat("Ans to b)")
print(fractions(ans2))

ans3 = punif(8, min = min, max = max) - punif(3, min = min, max = max)
cat("Ans to c)")
print(fractions(ans3))