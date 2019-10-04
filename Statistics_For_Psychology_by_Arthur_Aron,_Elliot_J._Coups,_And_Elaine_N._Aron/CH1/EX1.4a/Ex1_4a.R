                                        # Page no. : 25

# Worked - out Exapmles

Interest <- c(2, 4, 5, 5, 1, 3, 6, 3, 6, 6)

frequency_table <- data.frame(table(Interest))

Percent <- round((prop.table(frequency_table$Freq) * 100), 0)

frequency_table <- cbind(frequency_table, Percent)

View(frequency_table)

# Install Library if not install

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(data = frequency_table, aes(x = Interest, y = Freq)) +
  geom_bar(stat = "identity", fill = "violet") +
  labs(title = "Histogram", x = "Interest", y = "Frequency")