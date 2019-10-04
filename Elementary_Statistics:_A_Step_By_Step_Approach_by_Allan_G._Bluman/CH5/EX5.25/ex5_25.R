n=6
x1=1
x2=3
x3=2
p1=0.3
p2=0.6
p3=0.1
P=dmultinom(c(x1,x2,x3),size = 6,prob = c(p1,p2,p3))
n<-paste("Probability is",P)
n