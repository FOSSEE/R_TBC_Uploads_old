                                    # Page no. : 887 - 889

# Rank Correlation

sales_person <- c('A','B','C','D','E','F','G','H','I','J')
x <- c(2,4,7,1,6,3,10,9,8,5)   # Ranking of Potential
y <- c(400,360,300,295,280,350,200,260,220,385)   # Two Years Sales
z <- c(1,3,5,6,7,4,10,8,9,2)   # Ranking According to y

DF <- data.frame(sales_person,x,y,z)

d <- DF$x - DF$z
d_sq <- d**2

DF <- cbind(DF,d,d_sq)

total_d_sq <- sum(DF$d_sq)

n <- nrow(DF)

r_s <- 1 - ((6 * total_d_sq)/(n * (n**2 + 1)))   # Spearman Rank-Correlation Coefficient

mean_rs <- 0   

sigma_rs <- sqrt(1 / (n - 1))

z_val <- (r_s - mean_rs) / sigma_rs

alpha <- 0.05

# Two Tail Test

# P-value Approach

pval <- 2 * pnorm(z_val,lower.tail =  F)

if(pval >= alpha)
{
  cat("Since pval",pval,"is greater than or equal to 0.05 therefore we cannot reject the Null Hypothesis")
} else{
  cat("Since pval",pval,"is less than 0.05 therefore we can reject the Null Hypothesis")
}

