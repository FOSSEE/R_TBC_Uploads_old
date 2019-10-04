
#Normal Distributions with Common Variance 


M1 <- c(9.17,12.85,5.16,6.37,6.64,8.42,7.33,8.91,9.45,11.39,10.90,6.34,10.46,14.30,13.70)
A <- c(mean(M1),sd(M1),length(M1))

M2 <- c(18.86,8.86,17.11,17.38,9.38,11.64,11.25,15.00,12.77,18.89,16.88,12.43)
B  <- c(mean(M2),sd(M2),length(M2))

diff_mean= A[1]-B[1]


common_var = ((A[3]-1)*A[2]*A[2] + (B[3]-1)*B[2]*B[2])/ (A[3]+B[3]-2)
sigma = sqrt(common_var)


# Confidence interval =95%
alpha=1-0.95
t = qt( alpha/2, df=A[3]+B[3]-2,lower.tail = F)


c = t*sigma*sqrt(1/A[3]+ 1/B[3])

cat("Thus, we are 95% confident that the difference in the mean denier is between ",
    diff_mean - c," and ", diff_mean +c)
