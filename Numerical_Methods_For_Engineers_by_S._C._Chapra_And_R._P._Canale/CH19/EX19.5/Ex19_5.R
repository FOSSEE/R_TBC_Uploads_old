#install.packages("signal",dependencies = TRUE)
library(signal)
x=0:10
y=sin(x)
xi=seq(0,10,.25)
#part a
yi=interp1(x,y,xi)
plot(xi,yi,main = "y vs x (part a)",xlab = "x",ylab ="y" )

#part b
#fitting x and y in a fifth order polynomial
p<-c(0.0008, -0.0290, 0.3542, -1.6854, 2.586, -0.0915)

for (i in 1:41){
  yi[i]=p[1]*(xi[i]^5)+p[2]*(xi[i]^4)+p[3]*(xi[i]^3)+p[4]*(xi[i]^2)+p[5]*(xi[i])+p[6]
}
plot(xi,yi,main = "y vs x (part b)",xlab = "x",ylab = "y")

#part c
d = spline(x,y,method = "fmm",n = length(x))
plot(x,d$y,main = "y vs x (part c)",xlab = "x",ylab = "y")
lines(x,d$y)