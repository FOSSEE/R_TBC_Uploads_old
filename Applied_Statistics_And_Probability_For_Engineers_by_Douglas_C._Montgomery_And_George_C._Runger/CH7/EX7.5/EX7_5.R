#Thermal conductivity(Pg no. 252)

n = 10
obs = c(41.60 , 41.48 , 42.34 , 41.95 , 41.86 , 42.18 , 41.72 , 42.26 , 41.81 , 42.04)
sd = sd(obs) #standard deviation

se = sd/sqrt(n) #standard error

cat("standard error is ",round(se,digits = 4))