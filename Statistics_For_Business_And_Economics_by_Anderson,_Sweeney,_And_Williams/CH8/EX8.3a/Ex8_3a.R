                                     # Page no. : 326 - 327

# Determining the Sample Size

margin_of_error <- 2
z_value <- 1.96   # 95% Level of Confidence Interval

sample_standard_deviation <- 9.65

sample_size <- ((z_value)**2) * ((sample_standard_deviation)**2) / (margin_of_error)**2

cat("Sample size is",ceiling(sample_size))  
# If Sample Size is not integer then we round up to next higher integer