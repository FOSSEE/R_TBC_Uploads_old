#beta distribution 
#a)mean
alpha=3
beta=2
mu=alpha/(alpha+beta)
mu
cat("There for on average",mu*100,"% highway section require repaire")
#b)
F=pbeta(1/2,3,2)
plot(density(pbeta(seq(0,1/2,by=0.1),3,2)))
cat("The probability is",F)