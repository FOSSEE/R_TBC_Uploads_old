#Metallic Material Transition(Pg no. 276)

e = 0.5 #error in estimation
z = qnorm(0.025,lower.tail = FALSE)
sd = 1

n = ((z*sd)/e)^2
n = ceiling(n)

cat("the required sample size is",n)