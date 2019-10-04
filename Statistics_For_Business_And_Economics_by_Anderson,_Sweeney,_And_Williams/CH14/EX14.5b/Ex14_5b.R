                                 # Page no. : 610 - 612

# Standardized Residuals

i <- c(1,2,3,4,5,6,7,8,9,10)
x <- c(2,6,8,8,12,16,20,20,22,26)   # Student Population
n <- 10
s <- 13.829   # Standard error
y <- c(58,105,88,118,117,137,157,169,149,202)   # Sales

estimated_sales <- 60 + (5 * x)   # Regression Equation  = 60 + 5 x

x_deviation <- x - mean(x)

x_deviation_sq <- (x_deviation)**2

z <- round(x_deviation_sq / sum(x_deviation_sq),4)

h <- round((1 / n) + z, 4)

s_i <- round(s * sqrt(1 -h), 4)   # Standard Deviation for Residual i

residuals <- y - estimated_sales

standard_residuals <- round((residuals) / (s_i), 4)

DF <- data.frame(x, y, estimated_sales, x_deviation, x_deviation_sq, z, h, s_i, residuals, standard_residuals)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(x, standard_residuals)) + geom_point() + geom_hline(yintercept = 0, linetype=2) +
   labs(title = "Scatter Plot between  x and Standard Residuals", x = "X", 
        y = "Standard Residuals")

normal_scores <- round(qqnorm(1:10)$x, 2)
standard_residuals <- sort(standard_residuals, decreasing = F)

table <- data.frame(normal_scores, standard_residuals)

ggplot(table,aes(normal_scores, standard_residuals)) + geom_point() +
  geom_smooth(method = "lm", se = F) + 
labs(title = "Scatter Plot between Normal Scores and Standard Residuals", x = "Normal Scores",
     y = "Standard Residuals")