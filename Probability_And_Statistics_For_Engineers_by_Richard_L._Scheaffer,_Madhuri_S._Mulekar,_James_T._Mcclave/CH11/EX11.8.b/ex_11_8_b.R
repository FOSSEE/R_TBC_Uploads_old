# To find the confidence interval of the mean response..

x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)

# here x0 <- 90 F 
data <- data.frame(x=90)
res <- predict(line,data, interval = "prediction")

cat(" we are 95% confident that the peak power load will be between ",res[2],"-" ,res[3]," megawatts on a particular day when the maximum temperature is 90 F ")
