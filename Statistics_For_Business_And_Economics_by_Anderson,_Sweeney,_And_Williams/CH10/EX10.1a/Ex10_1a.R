                                        # Page no. : 410

# Inference about the Difference between the two Population Means Sigma 1 and Sigma 2 known

sigma1 <- 9
sigma2 <- 10
sample_size1 <- 36
sample_size2 <- 49
sample_mean1 <- 40 
sample_mean2 <- 35

point_estimate <- sample_mean1 - sample_mean2

z_value <- qnorm(0.975)   # alpha/2 = 0.05/2 = 0.025 = 1- 0.025 = 0.975

standard_error <- sqrt((((sigma1)^2)/(sample_size1)) + (((sigma2)^2)/(sample_size2)))

IE1 <- point_estimate + z_value*standard_error      
IE2 <- point_estimate - z_value*standard_error      

cat("The interval estimation for the given information at 95% confidence level is ",IE2 ,"to"
    , IE1)