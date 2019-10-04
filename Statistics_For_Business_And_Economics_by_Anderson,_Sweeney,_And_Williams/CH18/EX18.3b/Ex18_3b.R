                                    # Page no. : 802 - 803

# Exponential Smoothing

week <- c(1,2,3,4,5,6,7,8,9,10,11,12)
sales <- c(17,21,19,23,18,16,20,18,22,20,15,22)
forcast <- c(NA,17.00,17.80, 18.04, 19.03, 18.83, 18.26, 18.61, 18.49, 19.19, 19.35, 18.48)
forcast_error <- sales - forcast
forcast_error_sq <- (forcast_error)**2 

DF <- data.frame(week, sales, forcast, forcast_error, forcast_error_sq)

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

