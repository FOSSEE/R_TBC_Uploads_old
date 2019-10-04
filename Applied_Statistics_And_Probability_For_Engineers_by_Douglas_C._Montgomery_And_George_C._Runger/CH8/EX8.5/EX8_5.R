#Mercury Contamination(Pg no. 279)

n = 53
sd = 0.3486
z = qnorm(0.025,lower.tail = FALSE)
mean = 0.5250

min = mean - z*(sd/sqrt(n))
max = mean + z*(sd/sqrt(n))

cat("The approximate 95% CI is",round(min,digits = 4),"<= u <= ",round(max,digits = 4))