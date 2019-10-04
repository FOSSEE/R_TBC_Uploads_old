                                       # Page no. : 146 - 147

# Example of Determining the Characteristics of a Distribution of Means

mean <- 200   # Population Mean
sd <- 48   # Standard Deviation
N <- 64   # Sample 

var <- sd ** 2   # Variance
ans <- var / N   # Variance of a distribution of means

cat("Answer is",ans)


sd2 <- sqrt(ans)   # Standard Deviation of a distribution of means

cat("Answer is",sd2)
