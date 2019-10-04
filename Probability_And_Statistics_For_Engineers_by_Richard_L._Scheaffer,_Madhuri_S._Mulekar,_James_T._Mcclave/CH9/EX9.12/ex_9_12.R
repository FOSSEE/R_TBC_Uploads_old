
# Mean , variance and no. of observations for both machines are as follows:
A <- c(12,6,100)
B <- c(9,4,100)

# given confidence nterval =90%
alpha = 1-0.90
diff_mean <- A[1] - B[1]

diff_sd <- sqrt(A[2]/A[3] + B[2]/ B[3])


a = qnorm(alpha/2, lower.tail = F)
cat("We are about 90% confident that the difference in mean daily downtimes is between, ", diff_mean - a*diff_sd," - ", diff_mean + a*diff_sd," min")
