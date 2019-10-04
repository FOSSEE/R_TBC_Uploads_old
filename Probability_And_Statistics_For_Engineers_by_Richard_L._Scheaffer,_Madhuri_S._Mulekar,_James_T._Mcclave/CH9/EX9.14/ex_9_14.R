# Mean , variance and no. of observations for 2 batches are as follows:

A <- c(0.22,0.0010,4)
B <- c(0.17,0.0020,5)

diff_mean= A[1]-B[1]

common_var = ((A[3]-1)*A[2] + (B[3]-1)*B[2])/ (A[3]+B[3]-2)
sigma = sqrt(common_var)

# Confidence interval =95%
alpha=1-0.95
t = qt(alpha/2, df=A[3]+B[3]-2,lower.tail = F)

c = t*sigma*sqrt(1/A[3]+ 1/B[3])

cat("Thus, we are 95% confident that the difference in the mean porosity measurements for two batches is between ",
   diff_mean - c," and ", diff_mean +c)
