
# Chapter 8
# Example 8.6 page no. 240 from the pdf..
# Sampling Distribution of the difference of 2 means..

# given information about 2 manufacturers 


A <- c(6.5,0.9,36)


B <- c(6,0.8,49)


# prob. 36 tubes from A have mean lifetime at least 1 more than mean of sample of 49 from B??

diff_mean <- A[1]-B[1]

diff_sd <- sqrt((A[2]*A[2]/A[3])+ (B[2]*B[2]/B[3]))

cat("The probability that the mean lifetime for 36 tubes from A will be at least 1 year longer than the mean lifetime for 49 tubes from B is",pnorm(1,diff_mean,diff_sd,lower.tail = F))




