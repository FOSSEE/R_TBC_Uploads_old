#page no. 360
#example 8-22

#functions used
#qnorm():quantile function of the normal distribution:the quantile function maps from probabilities to values in normal distribution 


alpha=0.05
z=qnorm(1-alpha)   

q=(62-50)/sqrt(25)


cat("since q=",q,">",z,"the fair coin hypothesis is rejected")