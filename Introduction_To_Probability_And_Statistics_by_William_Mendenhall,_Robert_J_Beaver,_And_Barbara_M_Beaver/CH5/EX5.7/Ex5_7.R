prob_correct <- 0.2
prob_incorrect <- 1 - prob_correct
n <- 100
mu0 <- n * prob_correct
sigma <- sqrt(n * prob_correct * prob_incorrect)
cat("a large proportion of score will lie within two standard deviations of the mean, or from",(mu0 - 2 * sigma),"to",(mu0 + 2 * sigma),"." )
cat("allmost all the score will lie within three standard deviations of the mean, or from",(mu0 - 3 * sigma),"to",(mu0 + 3 * sigma),"." )
cat("guessing will be better than zero score but the student will not pass the exam")