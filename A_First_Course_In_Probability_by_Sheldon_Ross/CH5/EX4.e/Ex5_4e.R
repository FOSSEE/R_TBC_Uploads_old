
P_EgOne = 1 - pnorm(1.5)
cat("P{error|message is 1} =", P_EgOne, "\n")

P_EgZero = 1 - pnorm(2.5)
cat("P{error|message is 0} =", P_EgZero, "\n")
