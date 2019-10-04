# Poisson distribution Example :
# Poission formula : P(x) =lamda^x*e^-lamda/x!

l=3.2
x = 10
pd <- dpois(x,l,log=FALSE)
pd

# probability of getting exactly 10 customers during an 8-minute interval
l1=6.4
x1 = 10
pd1 <- dpois(x1,l1,log=FALSE)
pd1 