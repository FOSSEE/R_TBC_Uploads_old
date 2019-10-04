x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol<- data.frame(x,y)
line <- lm(y~x+I(x^2),data = pol)
coef = coefficients(line)
y_cap = function(xp){
  coef[1] + coef[2]*xp + coef[3]*xp*xp
}

cat(" the electrical usage for a particular day on which the high temperature is 90F, y_cap=", y_cap(90))
data <- data.frame(x=90)

d <- predict(line,data, interval = "prediction")

cat("The 95% prediction interval for y0 when x0=90 is",d[2],"-" ,d[3])

f <- predict(line,data,interval = "confidence")
cat("The 95% prediction interval for y0 when x0=90 is",f[2],"-" ,f[3])
