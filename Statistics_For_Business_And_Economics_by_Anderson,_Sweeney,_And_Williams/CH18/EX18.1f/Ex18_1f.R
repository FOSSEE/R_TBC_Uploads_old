                                      # Page no. : 791 - 792

# Time Series Patterns Eg-6

year_quart <- c("Y1 Q1", "Y1 Q2", "Y1 Q3", "Y1 Q4", "Y2 Q1", "Y2 Q2", "Y2 Q3", "Y2 Q4", "Y3 Q1", 
                "Y3 Q2", "Y3 Q3", "Y3 Q4", "Y4 Q1", "Y4 Q2", "Y4 Q3", "Y4 Q4")
                # Years and Quarters
sales <- c(4.8, 4.1, 6.0, 6.5, 5.8, 5.2, 6.8, 7.4, 6.0, 5.6, 7.5, 7.8, 6.3, 5.9, 8.0, 8.4)

DF <- data.frame(year_quart, sales)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year_quart,sales, group = 1)) + geom_line() + geom_point() + ylim(c(0.0,9.0)) +
  labs(title = "Years/quart V/S Sales Time Series Plot", x = "Year/Quarter", y = "Sales")
