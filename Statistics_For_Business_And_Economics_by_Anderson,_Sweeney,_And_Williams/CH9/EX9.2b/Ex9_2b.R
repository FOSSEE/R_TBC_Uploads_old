                                      # Page no. : 372 - 373

# Population Mean Sigma Unknown Two Tailed Test

mu0 <- 40  
alpha <- 0.05
xbar <- 37.4   
s <- 11.79   
n <- 25 

t_value <- (xbar - mu0) / (s / sqrt(n))

df <- n - 1  # Degree of Freedom

# Two Tail Test
# P - value Approach

pval <- 2 *(1 - pt(t_value,df = df,lower.tail = F))   # Book answer is  0.2822

if(pval > alpha)
{
  cat("Since p-value ",pval ,"is greater than 0.05, therefore we will accept null hypothesis")
} else {
  cat("Since p-value ",pval ,"is less than 0.05, therefore we will reject null hypothesis and accept 
      alternative hypothesis.")
}

# Critical Value Approach

t_half_alpha <- qt(1 - (alpha/2),df)
critical_value_1 <- -t_half_alpha
critical_value_2 <- t_half_alpha

if(t_value >= critical_value_2 || t_value <= critical_value_1)
{
  cat("Since t-value", t_value ,"does not lie in the range", critical_value_1 ,"and", critical_value_2
      ,"therefore we reject the null hypothesis and accept the alternative hypothesis.")
} else{
  cat("Since t-value", t_value ,"lies in the range", critical_value_1 ,"and", critical_value_2
      ,"therefore we accept the null hypothesis.")
}
