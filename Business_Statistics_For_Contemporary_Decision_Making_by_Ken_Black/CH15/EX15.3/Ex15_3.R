# EXPONENTIAL SMOOTHING :
Year <- c(1:16)
Total_units <- c(1193,1014,1200,1288,1457,1354,1477,1474,1617,1641,1569,
                 1603,1705,1848,1956,2068)
data <- data.frame(Year,Total_units)
data

library(ggplot2)
ggplot(data=data, aes(x=data$Year, y=data$Total_units, group=1)) +
  geom_line(linetype = "dashed")+
  geom_point()

# using  exponential smoothing function i.e. ses() :
# install.package("forecast") 
library(forecast)
# Forecast and error values for alpha = 0.2 :
f_a <- ses(Total_units, h = 8, alpha = 0.2, initial = "simple")[["fitted"]]
error_a <- ses(Total_units, h = 8, alpha = 0.2, initial = "simple")[["residuals"]]

# Forecast and error values for alpha = 0.2 :
f_b <- ses(Total_units, h = 8, alpha = 0.5, initial = "simple")[["fitted"]]
error_b <- ses(Total_units, h = 8, alpha = 0.5, initial = "simple")[["residuals"]]

# Forecast and error values for alpha = 0.2 :
f_c <- ses(Total_units, h = 8, alpha = 0.8, initial = "simple")[["fitted"]]
error_c <- ses(Total_units, h = 8, alpha = 0.8, initial = "simple")[["residuals"]]

f_data <- data.frame(data,f_a,error_a,f_b,error_b,f_c,error_c)
View(f_data)

# MAD and MSE values of alpha = 0.2, 0.5, 0.8 :
MAD_a <- sum(abs(error_a))/15  
MSE_a <- sum(abs(error_a^2))/15

MAD_b <- sum(abs(error_b))/15
MSE_b <- sum(abs(error_b^2))/15

MAD_c <- sum(abs(error_c))/15
MSE_c <- sum(abs(error_c^2))/15

val <- rbind(MAD_a,MSE_a,MAD_b,MSE_b,MAD_c,MSE_c)
val




