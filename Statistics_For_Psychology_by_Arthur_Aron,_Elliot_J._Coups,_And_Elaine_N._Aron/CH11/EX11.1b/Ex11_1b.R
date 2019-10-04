                                      # Page no. : 443

# How are you doing?

# 3rd Question

person <- LETTERS[1:4]
x <- c(3, 6, 1, 4)
y <- c(4, 7, 2, 6)

DF <- data.frame(person, x, y)
View(DF)

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(x = x, y = y)) + geom_point() + labs(title = "Scatter plot", x = "X", y = "Y") +
  theme_bw() + scale_x_continuous(limits=c(0, 6), breaks = c(0:6)) + 
  scale_y_continuous(limits=c(0, 7), breaks = c(0:7))