#install package ("qicharts")
#install library ("qicharts")
install.packages("qicharts")
library(qicharts)
n <- 4
bearing1 <- c(0.992,1.015,0.988,0.996,1.015,1.000,0.989,0.994,1.018,0.997,1.020,1.007,1.016,0.982,1.001,0.992,1.020,0.993,0.978,0.984,0.990,1.015,0.983,1.011,0.987)
bearing2 <- c(1.007,0.984,0.993,1.020,1.006,0.982,1.009,1.010,1.016,1.005,0.986,0.986,1.002,0.995,1.000,1.008,0.988,0.987,1.006,1.009,1.012,0.983,0.990,1.012,0.987)
bearing3 <- c(1.016,0.976,1.011,1.004,1.002,1.005,1.019,1.009,0.990,0.989,1.002,0.981,1.010,1.011,0.983,1.001,1.015,1.006,1.002,0.983,1.010,1.003,0.997,0.991,1.007)
bearing4 <- c(0.991,1.000,0.981,0.999,1.001,0.989,0.994,0.990,1.011,1.001,0.989,0.995,0.999,0.987,1.002,0.996,0.986,1.001,0.982,0.986,1.007,0.989,1.002,1.008,0.995)
sample <- c(1:25)
measurement <- c(bearing1 + bearing2 + bearing3 +bearing4)
sample_mean <- c((bearing1 + bearing2 + bearing3 + bearing4) / n)
df <- data.frame(sample, bearing1, bearing2, bearing3, bearing4,sample_mean)
df
qic(sample_mean, x = sample, data = df, chart = 'i',main = 'Xbar chart of Diameter', xlab = 'sample', ylab = 'sample mean')
#The results may slightly vary due to rounding off values