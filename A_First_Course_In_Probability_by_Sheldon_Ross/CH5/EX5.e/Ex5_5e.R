#install.packages('rmutil')
require(rmutil)

P_EgOne = plaplace(-1.5)
cat("P{error|message is 1} =", P_EgOne, "\n")

P_EgZero = plaplace(-2.5)
cat("P{error|message is 0} =", P_EgZero, "\n")
