# Response surface method


x1 =c(80,80,80,80,80,80,80,80,80,90,90,90,90,90,90,90,90,90,100,100,100,100,100,100,100,100,100)
x2 =c(50,50,50,55,55,55,60,60,60,50,50,50,55,55,55,60,60,60,50,50,50,55,55,55,60,60,60)
y = c(50.8,50.7,49.4,93.7,90.9,90.9,74.5,73.0,71.2,63.4,61.6,63.4,93.8,92.1,97.4,70.9,68.8,71.3,46.6,49.1,46.4,69.8,72.5,73.2,38.7,42.5,41.4)

dat <- data.frame(x1,x2,y)
model <- lm(y~x1+x2+I(x1^2)+I(x2^2)+I(x1*x2),data = dat)
c =coefficients(summary(model))
cat(" The least-squares model is as follows:")
cat(c[1][1],"+",c[2][1],"x1 +",c[3][1],"x2 + ",c[4][1],"x1^2 + ",c[5][1],"x2^2 + ",c[6][1],"x1x2")

data <- data.frame(x1=86.25  ,x2= 55.58 )

d <- predict(model,data, interval = "confidence")

cat("The 95% confidence interval for y when x1=86.25 and x2=55.58 is",d[2],"-" ,d[3])
cat("The 95% confidence interval for y when x1=86.25 and x2=55.58 is",d[1])
