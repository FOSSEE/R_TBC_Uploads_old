A<-c(46, 53, 29, 61, 36, 39, 47, 49, 52, 38, 55, 32, 57, 54, 44)
B<-c(12, 15, 7, 17, 10, 11, 11, 12, 14, 9, 16, 8, 18, 14, 12)
plot(A, B,xlab ="Relative humidity",ylab = "Moisture content",main = "Estimated regression line")
X = lm(B~A)
Y = X$coefficients[1]
X = X$coefficients[2]
p = seq(0,65,0.1)
q = p*X + Y
lines(p, q)