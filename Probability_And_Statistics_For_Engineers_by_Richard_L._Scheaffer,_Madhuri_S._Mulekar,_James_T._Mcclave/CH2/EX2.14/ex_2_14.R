x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)

pol <- data.frame(x,y)

line <- lm(y~x,data = pol)

#a
# here x0 <- 95 F 
data_a <- data.frame(x=95)
res_a <- predict(line,data_a)
cat(" the fitted relation tells us that the likely peak load will be around ",res_a," megawatts. ")

#b
# here x0 <- 98 F
data_b <- data.frame(x=98)
res_b <- predict(line,data_b)
cat(" It predicts the peak power load of ",res_b, "megawatts for the day with maximum temperature 98°F. ")

#c
# here x= <- 102 F
data_c <- data.frame(x=102)
res_c <-predict(line,data_c)
cat(" It predicts the peak power load of ",res_c, "megawatts for the day with maximum temperature 102°F.")
