                                    # Page no. : 58 - 60

# Worked - out Exapmles

# a) Mean

scores <- c(8, 6, 6, 9, 6, 5, 6, 2)

value <- mean(scores)

cat("Mean of scores is", value)

# b) Median

scores <- c(1, 7, 4, 2, 3, 6, 2, 9, 7)

value <- median(scores)

cat("Median of value is", value)

# c) Sum of Squares, Variance and Standard Deviation

scores <- c(8, 6, 6, 9, 6, 5, 6, 2)

value <- sum((scores - mean(scores))**2)

cat("Sum of Squares of scores is", value)

# Install Library if not install

install.packages("rafalib")

# Import Library 

library(rafalib)

variance <- popvar(scores)

cat("Variance of scores is", variance)

standard_deviation <- popsd(scores)

cat("Standard Deviation of scores is", round(standard_deviation, 2))