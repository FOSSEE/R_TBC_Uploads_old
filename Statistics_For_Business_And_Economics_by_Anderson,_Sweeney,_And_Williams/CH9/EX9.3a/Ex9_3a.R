                                      # Page no. : 377 - 378

# Population Proportion

p0 <- 0.20    
alpha <- 0.05   
n <- 400   
x <- 100   

p_bar <- x / n   

z_value <- (p_bar - p0) / sqrt((p0*(1 - p0)) / n)

# Upper Tail Test

# P-value Approach

pval <- pnorm(z_value,lower.tail = F)
if(pval > alpha)
{
  cat("Since p-value ",pval ,"is greater than 0.05, therefore we will accept null hypothesis")
} else {
  cat("Since p-value ",pval ,"is less than 0.05, therefore we will reject null hypothesis and accept 
      alternative hypothesis.")
}

# Critical Value Approach

z_alpha <- qnorm(1 - alpha)
critical_value <- z_alpha

if(z_value >= critical_value)
{
  cat("Since z-value", z_value ,"is greater then or equal to", critical_value , "therefore we reject
      the null hypothesis and accept the alternative hypothesis.")
} else{
  cat("Since z-value", z_value ,"is less than", critical_value,"therefore we accept the null hypothesis.")
}