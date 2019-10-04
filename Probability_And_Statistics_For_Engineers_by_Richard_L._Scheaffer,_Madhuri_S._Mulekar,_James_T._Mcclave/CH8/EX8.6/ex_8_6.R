Y <- 12
p <- 0.2
n <- 100
mu <- p
sd <- sqrt(p*(1-p)/n)


z_value = (Y/n - mu)/sd
cat("The required probability is ", pnorm(z_value))
cat("There is only a small probability of" ,pnorm(z_value) , " of accepting any lot that has 20% nonconforming wafers. ")