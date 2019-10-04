#Detergent Filling(Pg no. 289)

sample_variance = 0.0153 #fluidounce
n = 20 #bottles
x = qchisq(0.95,19, lower.tail = FALSE)
variance = ((n-1)*sample_variance)/x
sd = sqrt(variance)

cat("A 95% upper confidence bound on variance is",round(variance,digits = 4))
cat("A 95% upper confidence bound on standard deviation is",round(sd, digits = 2))