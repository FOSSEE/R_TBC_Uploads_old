# Probability of Normal Curve DISTRIBUTION :

x = 600
mean = 494
sd = 100
x1 = 300

a <- pnorm(x1, mean, sd, lower.tail=FALSE)
a
b <- pnorm(x, mean, sd, lower.tail=FALSE) 
b

# probability of a value between 300 and 600 :
a - b
