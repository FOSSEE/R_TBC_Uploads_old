#Ex4.18, Page 159
#Answers may slightly vary due to rounding off of values

m<-64
sd<-0.78
#P(X>c)=0.05
p<-0.005
#P(X<=c)=1-P(X>c)
s<-(1-p)*100
print(paste("c is the",s,"th percentile of the normal distribution with mean=64 and sd=0.78"))
q<-qnorm(s/100)
print(paste("Therefore",s,"th percentile:",q))

c<-m+q*sd
print(paste("c=",c,"oz"))

#Plotting 99.5th percentile
plot.new()
title(main="99.5th percentile",sub="Shaded area=>0.995")
curve(dnorm, xlim = c(-3, 3), ylim = c(0, 0.5), xlab = "z", ylab="f(z)")
prob = 0.995
x1= c(-3, seq(-3, qnorm(prob), by=.001), qnorm(prob))
y1= c(0, dnorm(seq(-3, qnorm(prob), by=.001)), 0)
polygon(x1, y1, col="blue")

