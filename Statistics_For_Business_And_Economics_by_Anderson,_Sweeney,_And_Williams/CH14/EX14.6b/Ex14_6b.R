                                     # Page no. : 617 - 618

# Detecting Influential Observations

x <- c(10, 10, 15, 20, 20, 25, 70)
y <- c(135, 130, 120, 115, 120, 110, 100)

DF <- data.frame(x, y)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(x, y)) + geom_point() + labs(title = "Scatter Plot between x and y", x = "X", 
                                            y = "Y")

point <- x[7]  # From Scatter Plot

h <- (1 / nrow(DF)) + (((point - mean(DF$x))**2) / (sum((DF$x - mean(DF$x))**2)))

cat("Leverage at point 7 is", h)