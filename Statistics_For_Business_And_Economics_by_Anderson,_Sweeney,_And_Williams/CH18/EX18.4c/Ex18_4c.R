                                  # Page no. : 814 - 816

# Nonlinear Trend Regression

year <- c(1,2,3,4,5,6,7,8,9,10)
revenue <- c(23.1,21.3,27.4,34.6,33.8,43.2,59.5,64.4,74.2,99.3)
year_sq <- year**2

DF <- data.frame(year,revenue,year_sq)

# Install Library if not installed

# install.packages("gpplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year,revenue)) + geom_line() + geom_point() + ylim(c(0,120)) +
  labs(title = "Years V/S Revenue Time Series Plot", x = "Year", y = "Revenue")

regressor <- lm(revenue ~ year + year_sq, data = DF)
summary(regressor)
anova(regressor)

ggplot(DF,aes(year,revenue)) + geom_line() + geom_point() + ylim(c(0,120)) + geom_smooth(method = 
                                                      "lm", se = F) + 
  labs(title = "Years V/S Revenue Time Series Plot", x = "Year", y = "Revenue")
