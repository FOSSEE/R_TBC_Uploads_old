                                      # Page no. : 366 - 367

# Relationship between Interval Estimation and Hypothesis Testing

mu <- 295   
alpha <- 0.05
n <- 50   
xbar <- 297.6   
sigma <- 12    

z_value <- 1.96    # alpha = 0.05 so alpha/2 = 0.05/2 = 0.025 (z-value is for 0.025)
 
# 95% Confidence Interval

margin_of_error <- z_value * (sigma / sqrt(n))

IE <- xbar + c(-margin_of_error, margin_of_error)  # Interval Estimate

cat("Interval estimate for 95% Confidence Interval is",IE)

if(mu >= IE[2] || mu <= IE[1])
{
  cat("Null Hypothesis is rejected..")
} else{
  cat("Null Hypothesis cannot be rejected..")
}