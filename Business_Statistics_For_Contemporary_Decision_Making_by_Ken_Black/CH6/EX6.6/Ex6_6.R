# PROBABILITY OF A UNIFORM DISTRIBUTION

x = 350
mean = 494
sd = 100
x1 = 450

a <- pnorm(x, mean, sd, lower.tail=FALSE)
a
b <- pnorm(x1, mean, sd, lower.tail=FALSE)
b

# probability of a value between 350 and 450 :
a-b
