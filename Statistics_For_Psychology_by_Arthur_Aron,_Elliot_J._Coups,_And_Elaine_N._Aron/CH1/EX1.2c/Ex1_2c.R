                                       # Page no. : 11

# Histogram for Grouped Frequency Table Example 2 

social_interaction <- c(48, 15, 33, 3, 21, 19, 17, 16, 44, 25, 30, 3, 5, 9, 35, 32, 26, 13, 14,
                        14, 47, 47, 18, 11, 5, 19, 24, 17, 6, 25, 8, 18, 29, 1, 18, 22, 3, 22, 
                        29, 2, 6, 10, 29, 10, 29, 21, 38, 41, 16, 17, 8, 40, 8, 10, 18, 7, 4, 4, 
                        8, 11, 3, 23, 10, 19, 21, 13, 12, 10, 4, 17, 11, 21, 9, 8, 7, 5, 3, 22, 
                        14, 25, 4, 11, 10, 18, 1, 28, 27, 19, 24, 35, 9, 30, 8, 26)

breaks <- seq(0, 50, by = 5)

mid_values <- seq(0+5/2,50-5/2, 5)

social.interaction <- cut(social_interaction, breaks, right = F)

grouped_frequency_table <- data.frame(table(social.interaction))
grouped_frequency_table$social_interacton_mid <- mid_values

View(grouped_frequency_table)

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(data = grouped_frequency_table, aes(x = factor(social_interacton_mid), y = Freq)) +
  geom_bar(stat = "identity", fill = "violet") +
  labs(title = "Histogram for grouped frequency table", x = "Social Interaction Mid Values",
       y = "Frequency") + 
  theme_bw()

