n=5
x1=3
x2=1
x3=1
p1=0.5
p2=0.3
p3=0.2
P=dmultinom(c(x1,x2,x3),size = 5,prob = c(p1,p2,p3))
n<-paste("Probability is",P)
n