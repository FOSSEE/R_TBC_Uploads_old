sample_mean <- 871;            # sample mean 
hypothesized_value <-  880;              # hypothesized value 
sigma <- 21;           #  standard deviation 
sample_size <- 50;                 # sample size 
alpha <- .05 
z.alpha <- round((qnorm(1 - alpha/2)),2) 
z.alpha                # critical value
lower <- round(hypothesized_value - z.alpha * ((sigma/sqrt(sample_size))),2)
lower
upper <- round(hypothesized_value + z.alpha * ((sigma/sqrt(sample_size))),2)
upper
mu <- 870
z1 <- round(((lower - mu)/(sigma/sqrt(sample_size))),2)
z1
z2 <- round(((upper - mu)/(sigma/sqrt(sample_size))),2)
z2
beta <- round( 1 - pnorm( z1),4)
power_of_test <- 1 - beta
cat("beta is",beta)
cat("power of test is",power_of_test)