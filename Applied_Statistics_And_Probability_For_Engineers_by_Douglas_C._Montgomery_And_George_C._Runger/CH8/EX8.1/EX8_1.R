#Metallic Material Transition(Pg no. 274)

n = 10
sd = 1
z = qnorm(0.025,lower.tail = FALSE)
mean = 64.46

min = mean - z*(sd/sqrt(n))
max = mean + z*(sd/sqrt(n))

cat("The resulting 95% CI is",round(min,digits = 2),"<= u <= ",round(max,digits = 2))