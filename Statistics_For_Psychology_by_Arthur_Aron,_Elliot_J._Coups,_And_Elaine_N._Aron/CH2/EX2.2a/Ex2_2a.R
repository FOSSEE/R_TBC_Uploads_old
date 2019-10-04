                                        # Page no. : 48

# Variance and Standard Deviation Example 1

scores <- c(7, 8, 8, 7, 3, 1, 6, 9, 3, 8)

# Install Library if not install

install.packages("rafalib")

# Import Library 

library(rafalib)

variance <- popvar(scores)

standard_deviation <- popsd(scores)

cat("Variance  of scores are", round(variance, 2), "and Standard Deviation of scores are",  
    round(standard_deviation, 2))

