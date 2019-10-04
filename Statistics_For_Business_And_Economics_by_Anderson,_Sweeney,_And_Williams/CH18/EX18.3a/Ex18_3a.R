                                    # Page no. : 798 - 799

# Moving Averages

week <- c(1,2,3,4,5,6,7,8,9,10,11,12)
sales <- c(17,21,19,23,18,16,20,18,22,20,15,22)
forcast <- c(NA,NA,NA,19,21,20,19,18,18,20,20,19)

DF <- data.frame(week,sales,forcast)

forcast_error <- DF$sales - DF$forcast

absolute_forecast_error <- abs(forcast_error)

square_absolute_forcast_error <- absolute_forecast_error**2

percent_error <- round((forcast_error / DF$sales) * 100, 2)

absolute_percent_error <- abs(percent_error)

DF <- cbind(DF,forcast_error,absolute_forecast_error,square_absolute_forcast_error,
            percent_error,absolute_percent_error)

View(DF)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF,aes(week)) + geom_line(aes(y = forcast), color = "red")+
  geom_line(aes(y = sales), color = "blue") + geom_point(aes(y = forcast)) + 
  geom_point(aes(y = sales))+
  ylim(c(0,25)) + 
  labs(title = "Week V/S Sales Time Series Plot", x = "Week", y = "Sales")

