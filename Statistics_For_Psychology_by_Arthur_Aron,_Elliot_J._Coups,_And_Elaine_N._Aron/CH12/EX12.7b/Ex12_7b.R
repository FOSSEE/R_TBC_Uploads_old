                                        # Page no. : 526

# Worked out examples 2

Elementry_School <- c("Main Street", "Casat", "Lakeland", "Shady Grove", "Jefferson")
Class_size <- c(25, 14, 33, 28, 20)
Achievement <- c(80, 98, 50, 82, 90)

DF <- data.frame(Elementry_School, Class_size, Achievement)
View(DF)

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(x = Class_size, y = Achievement)) + geom_point() + 
  labs(title = "Scatter plot", x = "Class size", y = "Achievement test score") +
  theme_bw() + geom_smooth(method = "lm", se = F)

# Book's figure is in page 527