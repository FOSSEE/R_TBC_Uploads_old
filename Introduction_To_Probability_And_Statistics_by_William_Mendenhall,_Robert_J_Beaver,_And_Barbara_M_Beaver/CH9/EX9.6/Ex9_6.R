sample_mean <- 871;            # sample mean 
hypothesized_value <-  880;              # hypothesized value 
sigma <- 21;           #  standard deviation 
sample_size <- 50;                 # sample size 
z_value <- (sample_mean - hypothesized_value)/(sigma/sqrt(sample_size)) 
z_value                       #test statistics
p_value <- round((1 - pnorm(-z_value)) + pnorm(z_value),4)
cat("p value is",p_value)
cat("reject null hypothesis  at either 5% or 1% level of significance")
