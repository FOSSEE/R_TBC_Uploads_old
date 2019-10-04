                                     # Page no. : 37

# Mean Example 2

x <- c(8, 7, 4, 10, 8, 6, 8, 9, 9, 7, 3, 7, 6, 5, 0, 9, 10, 7, 7, 3, 6, 7, 5, 2, 1, 6, 7, 10,
       8, 8)

value <- mean(x)

cat("Mean of x is", round(value,2))

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

# Showing mean value on histogram

ggplot(data = data.frame(x), aes(x = x)) +
  geom_bar(stat = "count", fill = "violet") + 
  geom_vline(xintercept = mean(x), col = "red", lwd = 0.8) + 
  labs(title = "Histogram with mean value", x = "Stress Rating", y = "Frequency") + 
  theme_bw()