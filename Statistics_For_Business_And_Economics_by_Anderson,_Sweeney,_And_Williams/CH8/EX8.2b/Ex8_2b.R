                                      # Page no. : 321 - 322

# Population Mean Sigma Unknown Eg-2

data <- c(52,44,55,44,45,59,50,54,62,46,54,42,60,62,43,42,48,55,57,56)


hist(data, col = "blue", main = "Histogram of Training Times", xlab = "Traing Times (days)", 
     ylab = "Frequency")  

test <- t.test(data)
IE1 <- test$conf.int[1]
IE2 <- test$conf.int[2]

cat("The 95% interval estimate is given by", IE1, "to", IE2)   
