                                   # Page no. : 222 - 223

# Hypergeometric Probability Distribution

# Probability for 1 defective item

N <- 12
n <- 3
r <- 5
x <- 1

HPD <- dhyper(x = x,m = r,n = N-r,k = n)

cat("Answer is",HPD)

# Probability for atleast one defective item

HPD <- dhyper(x = 0,m = r,n = N-r,k = n)  # Probability for no defective item

cat("Answer is",1 - HPD)  # Probability for atleast one defective item

# Expected value, Variance and Standard Deviation 

expected_value <- n * (r / N)
variance <- expected_value * (1 -(r/N)) * ((N-n)/(N-1))
standard_deviation <- sqrt(variance)

cat("Expected value",expected_value)
cat("Variance",variance)
cat("standard deviation",standard_deviation)
        