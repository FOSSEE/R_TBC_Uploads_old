                                     # Page no. : 793 - 795

# Forecast Accuracy

week <- c(1,2,3,4,5,6,7,8,9,10,11,12)
sales <- c(17,21,19,23,18,16,20,18,22,20,15,22)
forcast <- c(NA,17,21,19,23,18,16,20,18,22,20,15)

DF <- data.frame(week,sales,forcast)

forcast_error <- DF$sales - DF$forcast

absolute_forecast_error <- abs(forcast_error)

square_absolute_forcast_error <- absolute_forecast_error**2

percent_error <- round((forcast_error / DF$sales) * 100, 2)

absolute_percent_error <- abs(percent_error)

DF <- cbind(DF,forcast_error,absolute_forecast_error,square_absolute_forcast_error,
            percent_error,absolute_percent_error)

View(DF)

total_forcast_error <- sum(DF$forcast_error, na.rm = T)

total_absolute_forcast_error <- sum(DF$absolute_forecast_error, na.rm = T)

total_sq_abs_error <- sum(DF$square_absolute_forcast_error, na.rm = T)

total_percent_error <- sum(DF$percent_error, na.rm = T)

total_absolute_percent_error <- sum(DF$absolute_percent_error, na.rm = T)

# Native Value

MAE <- round(total_absolute_forcast_error / (nrow(DF)-1), 2)   # Not including 1st row
# Mean Absolute Error

MSE <- round(total_sq_abs_error / (nrow(DF)-1), 2)   # Not including 1st row
# Mean Square Error

MAPE <- round(total_absolute_percent_error / (nrow(DF)-1), 2)   # Not including 1st row
# Mean Absolute Percent Error

cat("Value of MAE is",MAE)
cat("Value of MSE is",MSE)
cat("Value of MAPE is",MAPE)

# Average of Past Values

forcast2 <- c(NA,17.00,19.00,19.00,20.00,19.60,19.00,19.14,19.00,19.33,19.40,19.00)

DF2 <- data.frame(week,sales,forcast2)

forcast_error2 <- DF2$sales - DF2$forcast2

absolute_forecast_error2 <- abs(forcast_error2)

square_absolute_forcast_error2 <- absolute_forecast_error2**2

percent_error2 <- round((forcast_error2 / DF2$sales) * 100, 2)

absolute_percent_error2 <- abs(percent_error2)

DF2 <- cbind(DF2,forcast_error2,absolute_forecast_error2,square_absolute_forcast_error2,
            percent_error2,absolute_percent_error2)

View(DF2)

total_forcast_error2 <- sum(DF2$forcast_error2, na.rm = T)

total_absolute_forcast_error2 <- sum(DF2$absolute_forecast_error2, na.rm = T)

total_sq_abs_error2 <- sum(DF2$square_absolute_forcast_error2, na.rm = T)

total_percent_error2 <- sum(DF2$percent_error2, na.rm = T)

total_absolute_percent_error2 <- sum(DF2$absolute_percent_error2, na.rm = T)

MAE2 <- round(total_absolute_forcast_error2 / (nrow(DF2)-1), 2)   # Not including 1st row
# Mean Absolute Error

MSE2 <- round(total_sq_abs_error2 / (nrow(DF2)-1), 2)   # Not including 1st row
# Mean Square Error

MAPE2 <- round(total_absolute_percent_error2 / (nrow(DF2)-1), 2)   # Not including 1st row
# Mean Absolute Percent Error

cat("Value of MAE is",MAE2)
cat("Value of MSE is",MSE2)
cat("Value of MAPE is",MAPE2)
