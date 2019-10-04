                                      # Page no. : 774

# Deflating a Series by Price Indexes

year <- c(2004,2005,2006,2007,2008)
hourly_wage <- c(15.69,16.12,16.76,17.45,18.07)
CPI <- c(188.9,195.3,201.6,207.3,215.3)

DF <- data.frame(year, hourly_wage, CPI)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF, aes(year, hourly_wage)) + geom_line() + geom_point() +
 labs(title = "Year V/S Hourly Wage Graph", x = "Year", y = "Hourly Wage")


deflated_hourly_wage <- (DF$hourly_wage / DF$CPI) * 100

DF <- cbind(DF, deflated_hourly_wage)

ggplot(DF, aes(year, deflated_hourly_wage)) + geom_line() + geom_point() +
  ylim(c(7.75,9.0)) +
  labs(title = "Year V/S Real Hourly Wage Graph", x = "Year", y = "Real Hourly Wage")