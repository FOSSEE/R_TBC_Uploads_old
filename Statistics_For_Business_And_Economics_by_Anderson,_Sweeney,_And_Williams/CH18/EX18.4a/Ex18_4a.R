                                     # Page no. : 807 - 808

# Trend Projection

year <- c(1,2,3,4,5,6,7,8,9,10)
sales <- c(21.6,22.9,25.5,21.9,23.9,27.5,31.5,29.7,28.6,31.4)

DF <- data.frame(year,sales)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year,sales)) + geom_line() + geom_point() + ylim(c(20,34)) +
 labs(title = "Years V/S Sales Time Series Plot", x = "Years", y = "Sales")

ggplot(DF,aes(year,sales)) + geom_line() + geom_point() + ylim(c(20,34)) + 
  geom_smooth(method = "lm", se = F) +
 labs(title = "Years V/S Sales Time Series and Linear Function Plot", x = "Years", y = "Sales")

