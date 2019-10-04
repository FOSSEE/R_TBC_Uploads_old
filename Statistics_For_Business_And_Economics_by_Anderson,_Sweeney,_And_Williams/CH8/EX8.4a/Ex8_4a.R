                                        # Page no. : 329

# Population Proportion

N <- 900    
n <- 396   

p <- n / N  
q <- 1 - p  

# Confidence Interval is 95%

z_value <- qnorm(0.975)   # 95% confidence interval --> 1 - 0.025 = 0.975

margin_of_error <- z_value * sqrt((p*q)/N)
IE <- p + c(-margin_of_error, margin_of_error)

cat("The margin of error is given by", margin_of_error)   
cat("The 95% interval estimate is given by", IE)  

