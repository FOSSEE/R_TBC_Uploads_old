                                    # Page no. : 787 - 788

# Time Series Patterns Eg-2

week <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)
sales <- c(17,21,19,23,18,16,20,18,22,20,15,22,31,34,31,33,28,32,30,29,34,33)

DF <- data.frame(week,sales)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(week,sales)) + geom_line() + geom_point() + ylim(c(0,40)) +
labs(title = "Week V/S Sales Time Series Plot", x = "Weeks", y = "Sales")
