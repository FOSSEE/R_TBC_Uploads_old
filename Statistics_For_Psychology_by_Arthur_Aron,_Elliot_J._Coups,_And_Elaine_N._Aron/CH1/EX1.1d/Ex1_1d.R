                                        # Page no. : 9 

# Grouped Frequency Tables

stress_rating <- c(8, 7, 4, 10, 8, 6, 8, 9, 9, 7, 3, 7, 6, 5, 0, 9, 10, 7, 7, 3, 6, 7,
                   5, 2, 1, 6, 7, 10, 8, 8)

breaks <- seq(-1, 11, by = 2)

stress.rating <- cut(stress_rating, breaks, right = T)

grouped_frequency_table <- data.frame(table(stress.rating))

percent <- round((prop.table(grouped_frequency_table$Freq) * 100), 1)

grouped_frequency_table <- cbind(grouped_frequency_table, percent)

View(grouped_frequency_table)   # First column is different but answer is correct
