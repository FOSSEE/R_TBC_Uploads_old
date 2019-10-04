                                     # Page no. : 310 - 314
# Population Mean Sigma known

pop_sd <- 20
sample_size <- 100
sample_mean <- 82

standard_error <- pop_sd / sqrt(sample_size)

# 95% confidence interval

margin_of_error <- qnorm(0.975)*standard_error   # 95% confidence interval --> 1 - 0.025 = 0.975

IE <- sample_mean + c(-margin_of_error, margin_of_error)

cat("The margin of error is given by", margin_of_error)   
cat("The 95% interval estimate is given by", IE)   

# 90% confidence interval

margin_of_error <- qnorm(0.95)*standard_error   # 90% confidence interval --> 1 - 0.05 = 0.95

IE <- sample_mean + c(-margin_of_error, margin_of_error)

cat("The margin of error is given by", margin_of_error)   
cat("The 90% interval estimate is given by", IE)   

# 99% confidence interval

margin_of_error <- qnorm(0.995)*standard_error   # 99% confidence interval --> 1 - 0.005 = 0.995

IE <- sample_mean + c(-margin_of_error, margin_of_error)

cat("The margin of error is given by", margin_of_error)   
cat("The 99% interval estimate is given by", IE)   