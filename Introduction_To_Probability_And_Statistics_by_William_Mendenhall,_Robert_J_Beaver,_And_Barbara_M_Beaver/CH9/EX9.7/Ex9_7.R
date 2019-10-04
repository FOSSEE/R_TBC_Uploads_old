sample_mean <- 3400;            # sample mean 
hypothesized_value <-  3300;              # hypothesized value 
sigma <- 1100;           #  standard deviation 
sample_size <- 100;                 # sample size 
z_value <- (sample_mean - hypothesized_value)/(sigma/sqrt(sample_size)) 
z_value                      # test statistic 
alpha <- 0.05 
z.alpha <- qnorm(1 - alpha) 
z.alpha                # critical value
cat("The value of z is",z_value)
cat("critical value is",z.alpha)
p_value <- 1 - pnorm(z_value)
cat("p value is",p_value)
cat("null hyppothesis is not rejected")
cat("not enough evidence ")
#the answer may slightly vary due to rounding off values
