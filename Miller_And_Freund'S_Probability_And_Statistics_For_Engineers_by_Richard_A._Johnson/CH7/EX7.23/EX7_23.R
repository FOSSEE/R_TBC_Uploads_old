#The test is two-tailed
mean=2.000#cm 
sd=0.050#cm
mu0=2
#FIND THE PROBABILITY OF TYPE 2 ERROR
z0.025 = qnorm(1-0.025)
mu= 2.010
n=30
Z1=z0.025+sqrt(n)*((mu0-mu)/sd)
Z1
Z2=-z0.025+sqrt(n)*((mu0-mu)/sd)
Z2
P=pnorm(Z1,lower.tail = FALSE)+pnorm(Z2)
P
cat("The probability is: ",1-P)