                                # Page no. : 809 - 812

# Trend Projection Part-2

year <- c(1,2,3,4,5,6,7,8,9,10)
sales <- c(21.6,22.9,25.5,21.9,23.9,27.5,31.5,29.7,28.6,31.4)
forcast <- c(21.5,22.6,23.7,24.8,25.9,27.0,28.1,29.2,30.3,31.4)

DF <- data.frame(year,sales,forcast)

regressor <- lm(sales ~ year, data = DF)

cat("Linear Trend Equation is T =",regressor$coefficients[1],"+",regressor$coefficients[2],"t")

res <- anova(regressor)

cat("MSE is ",res$`Sum Sq`[2]/10)

cat("MSE is ",res$`Mean Sq`[2])

regressor
res

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(year,sales)) + geom_line() + geom_point() + ylim(c(20,34)) + 
  geom_smooth(method = "lm", se = F) +
  labs(title = "Years V/S Sales Time Series Plot", x = "Years", y = "Sales")

