                                    # Page no. : 57-58

# Dataset

week <- c(1,2,3,4,5,6,7,8,9,10)
x <- c(2,5,1,3,4,1,5,3,4,2)
y <- c(50,57,41,54,54,38,63,48,59,46)
data <- data.frame(week,x,y)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

# Scatter Plot

ggplot(data, aes(x,y)) + geom_point() + geom_smooth(method = "lm", se = F) + 
labs(title = "Scatter Plot and Tradeline for the Stereo and Sound Equipment Store",
                                                    x = "Number of Commercials",
                                                    y = "Sales ($100s)")
