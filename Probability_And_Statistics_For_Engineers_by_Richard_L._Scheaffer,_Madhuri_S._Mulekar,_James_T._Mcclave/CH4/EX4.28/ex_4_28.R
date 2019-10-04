cat("Prob worker 1 or 2 is selected ", (1/4)+(1/4))
A <- (1/4)+(1/4)
cat("Prob worker 1 or 3 is selected" , (1/4)+(1/4))
B <- (1/4)+(1/4)
cat("Prob worker 1 is selected ",(1/4))
C <- 1/4
cat("Prob(AB) is worker 1 is selected ", 1/4)
AB <- 1/4
 A*B
cat("Since A*B is equal to AB, A and B are independent")
cat("Prob(AC) is worker 1 is selected", 1/4)
 A*C
cat("Since A*C is not equal to AC,  A and C are not independent")