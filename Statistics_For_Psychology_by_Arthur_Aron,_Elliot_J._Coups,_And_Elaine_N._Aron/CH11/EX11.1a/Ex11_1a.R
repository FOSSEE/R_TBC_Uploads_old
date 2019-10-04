                                  # Page no. : 441 - 442

# Graphing Correlations : The Scatter Diagram An example

Hours_slept <- c(5, 7, 8, 6, 6, 10)
Happy_mood <- c(2, 4, 7, 2, 3, 6)

DF <- data.frame(Hours_slept, Happy_mood)
View(DF)

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(x = Hours_slept, y = Happy_mood)) + geom_point() + labs(title = 
        "Scatter plot", x = "Hours slept last night", y = "Happy mood") + theme_bw() +
  scale_x_continuous(limits=c(1, 12), breaks = c(1:12)) + 
  scale_y_continuous(limits=c(1, 8), breaks = c(1:8))