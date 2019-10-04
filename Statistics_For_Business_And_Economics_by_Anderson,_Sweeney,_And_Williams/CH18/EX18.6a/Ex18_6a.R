                                     # Page no. : 832 - 833

# Time Series Decomposition

year_quart <- c("Y1 Q1", "Y1 Q2", "Y1 Q3", "Y1 Q4", "Y2 Q1", "Y2 Q2", "Y2 Q3", "Y2 Q4", "Y3 Q1", 
                "Y3 Q2", "Y3 Q3", "Y3 Q4", "Y4 Q1", "Y4 Q2", "Y4 Q3", "Y4 Q4")
# Years and Quarters
sales <- c(4.8, 4.1, 6.0, 6.5, 5.8, 5.2, 6.8, 7.4, 6.0, 5.6, 7.5, 7.8, 6.3, 5.9, 8.0, 8.4)
moving_avg <- c(NA,5.350,5.600,5.875,6.075,6.300,6.350,6.450,6.625,6.725,6.800,6.875,7.000,
                7.15,NA,NA)
centered_avg <- c(NA,NA,5.475,5.738,5.975,6.188,6.325,6.400,6.538,6.675,6.763,6.838,6.938,7.075,
                  NA,NA)

DF <- data.frame(year_quart, sales,moving_avg,centered_avg)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year_quart, group = 1)) + geom_line(aes(y = sales),color = "red") + 
  geom_point(aes(y = sales)) + geom_line(aes(y = centered_avg),color = "blue") +
  geom_point(aes(y = centered_avg))+
  ylim(c(0.0,9.0)) +
  labs(title = "Years/quart V/S Sales Time Series Plot", x = "Year/Quarter", y = "Sales")


