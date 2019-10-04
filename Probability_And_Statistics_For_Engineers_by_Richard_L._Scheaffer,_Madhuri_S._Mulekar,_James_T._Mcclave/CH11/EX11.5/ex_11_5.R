#H0 :(OT contributes no information for the prediction of WR using a simple linear model
#H1 :(OT contributes information for the prediction of WR using a simple linear model

OT =c(-0.0010,-0.0010,-0.0005,-0.0005,-0.0005,-0.0005,0.0005,0.0010,0.0015,0.0018,0.0025,0.0038,0.0042,0.0050,0.0062,0.0087,0.0105,0.0123,0.0127,0.0127,0.0132,0.0137,0.0140,0.0148,0.0148)
WR =c(1.30,3.00,1.60,3.50,4.25,4.30,3.80,3.80,2.70,4.40,4.90,2.80,3.50,5.50,4.20,4.10,6.00,4.90,6.80,6.90,5.20,7.20,6.70,5.80,5.90)
pol <- lm(WR~OT)
summary(pol)

# p_value <0.0001
cat(", we would reject the null hypothesis and conclude that the overtolerance provides information for the prediction of wall reduction")