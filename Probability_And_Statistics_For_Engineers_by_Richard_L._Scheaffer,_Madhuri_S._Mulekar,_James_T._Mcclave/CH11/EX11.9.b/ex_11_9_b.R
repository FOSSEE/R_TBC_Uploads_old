OT =c(-0.0010,-0.0010,-0.0005,-0.0005,-0.0005,-0.0005,0.0005,0.0010,0.0015,0.0018,0.0025,0.0038,0.0042,0.0050,0.0062,0.0087,0.0105,0.0123,0.0127,0.0127,0.0132,0.0137,0.0140,0.0148,0.0148)
WR =c(1.30,3.00,1.60,3.50,4.25,4.30,3.80,3.80,2.70,4.40,4.90,2.80,3.50,5.50,4.20,4.10,6.00,4.90,6.80,6.90,5.20,7.20,6.70,5.80,5.90)

pol <- data.frame(OT,WR)

line <- lm(WR~OT,data = pol)
data <- data.frame(OT=0.0020)
res <- predict(line,data, interval = "prediction")

cat(" we are 95% confident that the peak power load will be between ",res[2],"-" ,res[3]," megawatts on a particular day when the maximum temperature is 90 F ")
