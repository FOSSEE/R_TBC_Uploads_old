#install.packages("combinat")
library(combinat)

#Digital channel(Pg no. 80)

error = 0.1
not_error = 1 - error

P = error*not_error*error*not_error #probability of 2 errors

outcomes = dim(combn(4,2))[2]

total_probability = outcomes*P

cat("Probability P(X=2) =",total_probability)