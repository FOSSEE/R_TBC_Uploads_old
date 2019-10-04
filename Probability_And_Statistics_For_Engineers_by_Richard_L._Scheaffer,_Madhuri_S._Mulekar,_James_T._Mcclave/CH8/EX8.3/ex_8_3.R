# given , sigma =2 , n=100

#a
# according to central limit theorem
sigma =2
n = 100
sd = sigma/sqrt(n)
cat("the probability that the average fracture strength of glass exceeds 14.5 is",pnorm(14.5,14,sd,lower.tail = F),
    "which is very small")

#b
x <- (1-0.95)/2 +0.95

ll <- qnorm(x,lower.tail = F)
ul <- qnorm(x,lower.tail = T)
cat("The limit is a = ", 14+ ll*sd,"to b = ",14 + ul*sd)
    
