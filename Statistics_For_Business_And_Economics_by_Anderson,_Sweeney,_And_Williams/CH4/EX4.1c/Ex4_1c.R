                                    # Page no. : 155 - 156

# Assigning Probabilities

x <- c(0,1,2,3,4)   
y <- c(2,5,6,4,3)   

DF <- data.frame(x,y)

y_sum <- sum(DF$y)  

prob <- DF$y / y_sum   

DF <- cbind(DF,prob)

View(DF)   