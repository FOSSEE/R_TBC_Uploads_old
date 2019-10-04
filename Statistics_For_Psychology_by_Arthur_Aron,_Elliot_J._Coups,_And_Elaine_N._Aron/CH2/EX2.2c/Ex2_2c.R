                                     # Page no. : 51 - 52

# How are you doing? 

# 4th Question

scores <- c(2, 4, 3, 7)

# Install Library if not install

install.packages("rafalib")

# Import Library 

library(rafalib)

variance <- popvar(scores)

standard_deviation <- popsd(scores)

cat("Variance  of scores are", round(variance, 2), "and Standard Deviation of scores are",  
    round(standard_deviation, 2))
