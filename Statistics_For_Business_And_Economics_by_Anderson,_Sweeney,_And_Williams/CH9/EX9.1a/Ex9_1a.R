                                      # Page no. : 359 - 360

# Population Mean Sigma Known One Tailed Test

sigma <- 0.18  
n <- 36  
xbar <- 2.92
mu <- 3

z_value <- (xbar - mu) / (sigma / sqrt(n))
z_value <- round(z_value,2)

alpha <- 0.01

# P Value Approch (Lower-Tail Test)

pval <- pnorm(z_value)

if(pval > alpha)
{
  cat("Since p-value ",pval ,"is greater than 0.01, therefore we will accept null hypothesis")
} else {
  cat("Since p-value ",pval ,"is less than 0.01, therefore we will reject null hypothesis and accept 
      alternative hypothesis.")
}

# Critical Value Approch (Lower-Tail Test)

z_alpha <- qnorm(1 - (alpha))   # Area of 0.01 to the left (1 - 0.01 = 0.99)
critical_approch <- -z_alpha

if(z_value <= critical_approch)
{
  cat("Since z-value", z_value ,"is less then or equal to", critical_approch , "therefore we reject
      the null hypothesis and accept the alternative hypothesis.")
} else{
  cat("Since z-value", z_value ,"is more than", critical_approch,"therefore we accept the null hypothesis.")
}