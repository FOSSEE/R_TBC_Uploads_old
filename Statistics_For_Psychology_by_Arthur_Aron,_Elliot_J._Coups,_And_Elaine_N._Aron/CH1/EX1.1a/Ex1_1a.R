                                         # Page no. : 7

# Frequency Tables : An Example

stress_rating <- c(8, 7, 4, 10, 8, 6, 8, 9, 9, 7, 3, 7, 6, 5, 0, 9, 10, 7, 7, 3, 6, 7,
                   5, 2, 1, 6, 7, 10, 8, 8)

frequency_table <- data.frame(table(stress_rating))

percent <- round((prop.table(frequency_table$Freq) * 100), 1)

frequency_table <- cbind(frequency_table, percent)

View(frequency_table)


