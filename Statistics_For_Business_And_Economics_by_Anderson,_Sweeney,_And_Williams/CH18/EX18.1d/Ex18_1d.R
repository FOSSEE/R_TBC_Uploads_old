                                    # Page no. : 789 - 790

# Time Series Patterns Eg-4

year <- c(1,2,3,4,5,6,7,8,9,10)
revenue <- c(23.1,21.3,27.4,34.6,33.8,43.2,59.5,64.4,74.2,99.3)

DF <- data.frame(year,revenue)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year,revenue)) + geom_line() + geom_point() + ylim(c(0,120)) +
 labs(title = "Years V/S Revenue Time Series Plot", x = "Years", y = "Revenue")
