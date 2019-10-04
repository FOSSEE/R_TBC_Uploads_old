                                      # Page no. : 11

# Histogram for Frequency Table

stress_rating <- c(8, 7, 4, 10, 8, 6, 8, 9, 9, 7, 3, 7, 6, 5, 0, 9, 10, 7, 7, 3, 6, 7,
                   5, 2, 1, 6, 7, 10, 8, 8)

frequency_table <- data.frame(table(stress_rating))

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(data = frequency_table, aes(x = stress_rating, y = Freq)) +
  geom_bar(stat = "identity", fill = "violet") +
  labs(title = "Histogram for frequency table", x = "Stress Rating", y = "Frequency") + 
  theme_bw()