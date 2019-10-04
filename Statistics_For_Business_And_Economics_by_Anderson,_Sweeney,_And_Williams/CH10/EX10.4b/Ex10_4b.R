                                       # Page no. : 432 - 433

# Hypothesis Tests About Difference between two Proportions

pbar1 <- 0.14   
pbar2 <- 0.09   
n1 <- 250
n2 <- 300
alpha <- 0.10   # Significance Level

pbar <- ((n1 * pbar1) + (n2 * pbar2)) / (n1 + n2)   # Pooled Estrimator

z_value <- (pbar1 - pbar2) / sqrt((pbar*(1 - pbar))*((1/n1)+(1/n2)))

# Two Tail Test

pval <- 2 * pnorm(z_value, lower.tail = F)

if(pval <= alpha)
{
  cat("Since P-Value",pval,"is less than or equal to 0.10 therefore we can reject Null Hypothesis")
} else {
  cat("Since P-Value",pval,"is more than 0.10 therefore we cannot reject Null Hypothesis")
}