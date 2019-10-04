xbar <- 725;            # sample mean 
mu0 <-  670;              # hypothesized value 
sigma <- 102;           #  standard deviation 
sample_size <- 40;                 # sample size 
z <- (xbar - mu0)/(sigma/sqrt(sample_size)) 
z                      # test statistic 
alpha <- .01 
z.alpha <- qnorm(1 - alpha) 
z.alpha                # critical value
cat("The value of z is",z)
cat("critical value is",z.alpha)
cat("null hypothesis rejected ")
cat("average weekly earning for male are higher than average for female")
#the answer may slightly vary due to rounding off values
