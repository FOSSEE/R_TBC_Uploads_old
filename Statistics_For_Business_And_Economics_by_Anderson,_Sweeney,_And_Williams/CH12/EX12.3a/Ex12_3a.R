                                      # Page no. : 488 - 490

# Goodness of Fit Test Poisson Distribution

x <- c(0,1,2,3,4,5,6,7,8,9)
observed_freq <- c(2,8,10,12,18,22,22,16,12,6)
y <- x * observed_freq
e <- 2.72

mu <- sum(y) / sum(observed_freq)
fun_of_x <- round(((mu)**x) * (e)**(-mu) / factorial(x), 4)   # Function of x

expected_freq <- round(sum(observed_freq)*fun_of_x, 2)

diff <- observed_freq - expected_freq

sq_diff <- round((diff)**2,2)

answer <- round(sq_diff / expected_freq,2)

DF <- data.frame(x,observed_freq,expected_freq,diff,sq_diff,answer)

total_observe_freq <- sum(DF$observed_freq)
total_expexted_freq <- sum(DF$expected_freq)

chisq_value <- sum(DF$answer)

df <- nrow(DF) - 2   # Degrees of Freedom (k - p - 1 where k = 10, p = 1)

alpha <- 0.05

# Upper Tail Test

# P-value Approach

pval <- pchisq(chisq_value,df,lower.tail = F)

if(pval <= alpha)
{
  cat("Since pval",pval,"is less than or equal to 0.05 therefore we can reject Null Hypothesis")
} else{
  cat("Since pval",pval,"is greater than 0.05 therefore we cannot reject Null Hypothesis")
} 

# In Book it is taken 9 categories but we consider 10 so p-value may vary but answeris correct

