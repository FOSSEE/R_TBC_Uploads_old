# Mean , variance and no. of observations for 3 batches are as follows:

A <- c(0.22,0.0010,4)
B <- c(0.17,0.0020,5)
C <- c(0.12,0.0018,10)

mu =( A[1]*A[3] + B[1]*B[3])/(A[3]+B[3])

# Difference between average f 2 batches and the 3rd batch
diff_mean = mu - C[1]

diff_sd = sqrt(((A[3]-1)*A[2] + (B[3]-1)*B[2] + (C[3]-1)*C[2])/(A[3]+B[3]+C[3]- 3))

a1 = A[3]/(A[3]+B[3])
a2 = B[3]/(A[3]+B[3])
a3 = -1

#Given , confidence interval =95%
alpha= 1-0.95
b = qt(alpha/2,df= A[3]+B[3]+C[3]-3,lower.tail = F)*diff_sd*sqrt(a1*a1/A[3] + a2*a2/B[3] + a3*a3/C[3])

cat(" we are 95% confident that the difference between the mean of the third batch and the average
    of means of the first two batches is between ", diff_mean - b ," - ", diff_mean + b)
    
