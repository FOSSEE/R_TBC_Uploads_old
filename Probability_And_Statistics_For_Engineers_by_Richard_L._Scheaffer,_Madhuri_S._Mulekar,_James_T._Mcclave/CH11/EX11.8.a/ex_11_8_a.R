# To find the confidence interval of the mean response..

x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)

# here x0 <- 90 F 
data <- data.frame(x=90)

c <- predict(line,data, interval = "confidence")

cat(" we can be 95% confident that the mean peak power load is between",c[2],c[3],"   megawatts for days with a maximum temperature of 90F  ")


