                                     # Page no. 277 - 278

# Sampling Distribution

mean_annual_salary <- c("49500.00-49999.99","50000.00-50499.99","50500.00-50999.99","51000.00-51499.99",
                        "51500.00-51999.99","52000.00-52499.99","52500.00-52999.99","53000.00-53499.99",
                        "53500.00-53999.99")
frequency <- c(2,16,52,101,133,110,54,26,6)
relative_frequency <- c(.004,.032,.104,.202,.266,.220,.108,.052,.012)

DF <- data.frame(mean_annual_salary,frequency,relative_frequency)

library(ggplot2)

ggplot(DF,aes(mean_annual_salary,relative_frequency)) +
  geom_histogram(stat = "identity", fill = "purple") + labs(title = "Relative Frequency Histogram",
                                 x = " Mean Salary", y = "frequency")