                                  # Page no. : 835 - 836

# Deseasonalizing the Time Series

year_quart <- c("Y1 Q1", "Y1 Q2", "Y1 Q3", "Y1 Q4", "Y2 Q1", "Y2 Q2", "Y2 Q3", "Y2 Q4", "Y3 Q1", 
                "Y3 Q2", "Y3 Q3", "Y3 Q4", "Y4 Q1", "Y4 Q2", "Y4 Q3", "Y4 Q4")
# Years and Quarters
period <- c(1:16)
sales <- c(4.8, 4.1, 6.0, 6.5, 5.8, 5.2, 6.8, 7.4, 6.0, 5.6, 7.5, 7.8, 6.3, 5.9, 8.0, 8.4)
index <- c(0.93,0.84,1.09,1.14,0.93,0.84,1.09,1.14,0.93,0.84,1.09,1.14,0.93,0.84,1.09,1.14)
deseasonalized_sales <- c(5.16,4.88,5.50,5.70,6.24,6.19,6.24,6.49,6.45,6.67,6.88,6.84,6.77,
                          7.02,7.34,7.37)

DF <- data.frame(year_quart,period,sales,index,deseasonalized_sales)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year_quart,deseasonalized_sales, group = 1)) + geom_line() + geom_point() +
  ylim(c(0.0,9.0)) +
  labs(title = "Years/quart V/S Deseasonalized Sales Time Series Plot", x = "Year/Quarter",
       y = "Deseasonalized Sales")

regressor <- lm(deseasonalized_sales ~ period, data = DF)
summary(regressor)
anova(regressor)

b0 <- regressor$coefficients[1]
b1 <- regressor$coefficients[2]

cat("Equation is deseasonalized sales = ",b0,"+",b1,"Period")
