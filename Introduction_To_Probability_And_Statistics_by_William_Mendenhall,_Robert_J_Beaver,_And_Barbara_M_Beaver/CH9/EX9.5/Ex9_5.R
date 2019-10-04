sample_mean <- 871;            # sample mean 
hypothesized_value <-  880;              # hypothesized value 
sigma <- 21;           #  standard deviation 
sample_size <- 50;                 # sample size 
z <- round(((sample_mean - hypothesized_value)/(sigma/sqrt(sample_size))),2)
z                      # test statistic 
alpha <- .05 
z.alpha <- round((qnorm(1 - alpha/2)),2) 
z.alpha                # critical value
cat("The value of z is",z)
cat("critical value is",z.alpha)
cat("null hypothesis can be rejected")
cat("she is reasonably confident that the decision is correct")