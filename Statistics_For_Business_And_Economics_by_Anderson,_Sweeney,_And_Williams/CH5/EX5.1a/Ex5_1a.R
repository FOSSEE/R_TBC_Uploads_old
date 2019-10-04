                                    # Page no. : 198 - 199

# Discrete Probability Distribution:

x <- c(0,1,2,3,4,5)  
prob_of_x <- c(0.18,0.39,0.24,0.14,0.04,0.01) 

dataset <- data.frame(x, prob_of_x)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(dataset, aes(x = x, y = prob_of_x)) + geom_bar(stat = "identity", fill = "blue") + labs(
  title = "Graphical representation of the Probability Distribution", 
  x = "Number of Automobiles", y = "Probability")

                                   # Page no. : 203

# Expected value

exp_values <- dataset$x * dataset$prob_of_x

dataset <- data.frame(cbind(dataset, exp_values))

expected_value <- sum(dataset$exp_values)
cat("Expected value for the given problem is", expected_value)

                                  # Page no. : 204 - 205

# Variance and Standard Deviation

deviation_of_x <- (dataset$x - expected_value)

deviation_square <- (deviation_of_x) ** 2
variance <- sum(dataset$prob_of_x * deviation_square)
standard_deviation <- sqrt(variance)

cat("Variance is",variance)
cat("Standard Deviation is",standard_deviation)
