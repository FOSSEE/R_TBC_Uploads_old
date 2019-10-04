
#Sampling Distribution of the difference of 2 means..

# Mean, variance and no. of samples for both groups are as follows

A <- c(450,17.795,6)
B <- c(250,9.129,4)

diff_mean <- A[1] - B[1]

diff_sd <- sqrt(((A[3]-1)*A[2]*A[2] + (B[3]-1)*B[2]*B[2])/ (A[3]-1 + B[3]-1))

# P(X1-X2 >= 150)
x <- (150 - diff_mean)/sqrt(diff_sd*diff_sd*(1/A[3] + 1/B[3]))

#degree of freedom = 6+4-2
cat(" probability that the sample mean tensile proof stress for group 1 is at least 150 MPa larger than that for group 2 is ",pt(x,df=8,lower.tail = F))
