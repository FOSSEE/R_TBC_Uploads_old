rm("c")
#Sampling Distribution of the difference of 2 means..

# Mean, variance and no. of samples for both machines are as follows

A <- c(1,200,25)
B <- c(1,200,25)

diff_mean <- A[1]-B[1]

diff_sd <- sqrt((A[2]/A[3])+(B[2]/B[3]))

cat(" the probability that the difference in sample means for two machines will be at most 10 ml is ", 
    pnorm(10,diff_mean,diff_sd) - pnorm(-10,diff_mean,diff_sd) )
