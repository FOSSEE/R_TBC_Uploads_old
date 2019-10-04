# Mean , variance and no. of observations for 3 machines are as follows:

A <- c(12,6,100)
B <- c(9,4,100)
C <- c(14,5,100)

#Expected daily cost for downtime on 3 machines is 3*mu1 + 5*mu2 + 2*mu3

mu = 3*A[1] + 5*B[1] + 2*C[1]
cat("The estimated daily cost is ",mu )

var =  9*A[2]/A[3] + 25*B[2]/B[3] + 4*C[2]/C[3]
cat("Estimated variance is ", var)

# Confidence interval =95%
alpha=1-0.95
z = qnorm(1 - alpha/2)

cat(" We are 95% confident that the mean daily cost of downtimes on these machines is between $",
    mu - z*sqrt(var)," and $",mu + z*sqrt(var))
