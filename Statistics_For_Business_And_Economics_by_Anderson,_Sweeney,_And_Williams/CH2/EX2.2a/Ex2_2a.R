                                      # Page no. : 39-40

# Frequency Distribution (Quantitative Data)

audit_data <- c(12,15,20,22,14,14,15,27,21,18,19,18,22,33,16,18,17,23,28,13)

no_of_classes <- 5

width <- (max(audit_data) - min(audit_data)) / no_of_classes

width <- ceiling(width)   # Rounding up of the value

breaks <- seq(10,34,by = width)

class_range <- cut(audit_data, breaks, right=T)

frequency <- table(class_range)

frequency_distribution <- data.frame(frequency)

frequency_distribution <- data.frame(class_range = frequency_distribution$class_range,
                                     frequency = frequency_distribution$Freq)

# Note that :- Book answer will differ with my answer though number of classes and width of 
# each class is same as in the book!!!

                                        # Page no. : 41

relative_frequency <- round(frequency_distribution$frequency / sum(frequency_distribution$frequency)
                                  ,2)   # Rounding of data to 2 digits

percentage_frequency <- relative_frequency * 100

audit_data_FD <- cbind(frequency_distribution,
                             relative_frequency, percentage_frequency)

View(audit_data_FD)

                                        # Page no. : 41-42

# Dot Plot and Histogram

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

# Dot Plot

dotchart(audit_data, main = "Dot Plot for the Audit Time Data", xlab = "Audit Time (days)",
         cex = 0.5)   # cex is for scaling

# Note that: Book dot plot is different from my dot plot.

# Histogram

ggplot(audit_data_FD, aes(class_range, frequency, fill = class_range))+
  geom_histogram(stat = "identity")+labs(title="Histogram for the Audit Time Data" , 
                                         x = "Audit Time (days)", y = "Frequency")+ylim(0,8)

