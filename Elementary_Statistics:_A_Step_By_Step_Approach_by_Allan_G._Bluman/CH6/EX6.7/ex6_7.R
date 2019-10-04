X1=27
X2=31
X3=30.2
m=28
sd=2
z3=round((X3-m)/sd,2)
z1=round((X1-m)/sd,2)
g<-paste(round((1-pnorm(z3))*100,2),"% is the probability that a randomly selected household generates More than 30.2 pounds per month")
g
z2=round((X2-m)/sd,2)
g<-paste(round((pnorm(z2)-pnorm(z1))*100,2),"% is the probability that a randomly selected household generates between 27 and 31 pounds of newspapers per month")
g