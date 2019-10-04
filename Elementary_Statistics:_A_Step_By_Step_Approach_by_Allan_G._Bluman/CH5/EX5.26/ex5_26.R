n=5
x1=2
x2=2
x3=1
p1=0.4
p2=0.3
p3=0.3
P=dmultinom(c(x1,x2,x3),size = 5,prob = c(p1,p2,p3))
n<-paste("Probability is",P)
n
#answer is in decimals