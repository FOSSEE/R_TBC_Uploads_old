                                        # Page no. : 371 - 372

# Population Mean Sigma Unknown One Tailed Test

mu0 <- 7 
alpha <- 0.05
xbar <- 7.25   
s <- 1.052   
n <- 60  

t_value <- (xbar - mu0) / (s / sqrt(n))

df <- n - 1  

# Upper Tail Test

pval <- pt(t_value,df = df,lower.tail = F)   # Book answer is  0.354

if(pval > alpha)
{
  cat("Since p-value ",pval ,"is greater than 0.05, therefore we will accept null hypothesis")
} else {
  cat("Since p-value ",pval ,"is less than 0.05, therefore we will reject null hypothesis and accept 
      alternative hypothesis.")
}