                                      # Page no. : 431             

# Inference About the Difference Between Two Population Proportions

n1 <- 250
n2 <- 300
x1 <- 35
x2 <- 27
alpha <- 0.1

pbar1 <- x1 / n1  
pbar2 <- x2 / n2  

qbar1 <- 1 - pbar1   
qbar2 <- 1 - pbar2   

# Interval Estimation

diff_prop <- pbar1 - pbar2

z_half_alpha <- qnorm(0.95)   # alpha / 2  =  0.1 / 2  = 0.05  = 0.95  (1 - 0.05)

margin_of_error <- z_half_alpha * sqrt((pbar1 * qbar1)/n1 + (pbar2 * qbar2)/n2 )

IE1 <- diff_prop + margin_of_error
IE2 <- diff_prop - margin_of_error

cat("The interval estimation for the given information at 90% confidence level is ",IE2 ,"to", IE1)
