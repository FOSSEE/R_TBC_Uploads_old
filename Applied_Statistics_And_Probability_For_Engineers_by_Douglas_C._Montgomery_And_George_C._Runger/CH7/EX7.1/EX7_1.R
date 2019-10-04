#Resistors(Pg no. 175)

n = 25
mean = 100 #ohms
x = 95 #ohms

sd = mean/(sqrt(n)) #standard deviation
z = (x - mean)/sd

#P(x<95) = P(Z<-2.5)
p = pnorm(-2.5)
round(p, digits = 4)

