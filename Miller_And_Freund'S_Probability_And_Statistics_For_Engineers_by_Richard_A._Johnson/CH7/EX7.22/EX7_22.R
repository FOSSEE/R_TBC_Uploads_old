sd=3.6#dB
mu0=75.2
#null hypothesis mu0 = 75.20 
#alternative hypothesis mu0 > 75.20 
n=15#there are 15 machines
mu=77#dB
#The test is one-sided
alpha = 0.05
z0.05 = qnorm(1-0.05)
Z=z0.05+sqrt(n)*((mu0-mu)/sd)
Z
P=pnorm(Z,lower.tail = FALSE)
P
cat("There for the probability for type 2 error is: ",1-P)