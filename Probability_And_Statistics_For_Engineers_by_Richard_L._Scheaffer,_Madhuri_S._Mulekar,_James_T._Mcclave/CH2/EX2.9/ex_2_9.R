# Mean,sd and no. of observations for CO and SO2 are as follows:
O3 =c(0.023,0.029,0.032,0.014,0.016,0.024,0.021,0.017,0.044,0.038,0.028,0.025,0.020,0.021,0.023)
SO2 =c(0.019,0.030,0.075,0.047,0.009,0.043,0.031,0.039,0.010,0.046,0.027,0.086,0.007,0.011,0.030)

r=cor(O3,SO2)
cat("The value of r is very small and doesn't shw any association between the O3 and SO2 levels measured.")
