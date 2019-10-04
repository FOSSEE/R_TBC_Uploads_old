                                       # Page no. : 330 

# Determining the Sample Size

margin_of_error <- 0.025
z_value <- 1.96   # 95% Level of Confidence Interval

p <- 0.44  
q <- 1 - p 

sample_size <- ((z_value)**2 * p * q) / (margin_of_error)**2

cat("Sample size is",ceiling(sample_size))    
# If Sample Size is not integer then we round up to next higher integer

                                      # Page no. : 331

margin_of_error <- 0.025
z_value <- 1.96   # 95% Level of Confidence Interval

p <- 0.50  
q <- 1 - p

sample_size <- ((z_value)**2 * p * q) / (margin_of_error)**2

cat("Sample size is",ceiling(sample_size))   
# If Sample Size is not integer then we round up to next higher integer