f <- function(t,y) {
  -1000*y+3000-2000*exp(-t)
}

y0=0
#explicit euler
h1=0.0005
y1 = matrix(0,60)
y1[1]=y0
count=2
t=seq(0,0.006,0.0001)
for (i in seq(0,0.0059,0.0001)){
  y1[count]=y1[count-1]+f(i,y1[count-1])*h1
  count=count+1
}
h2=0.0015
y2 = matrix(0,60)
y2[1]=y0
count=2
t=seq(0,0.006,0.0001)
for (i in seq(0,0.0059,0.0001)){
  y2[count]=y2[count-1]+f(i,y2[count-1])*h2
  count=count+1
}
plot(t,y2,main = "y vs t",xlab = "t",ylab = "y")
lines(t,y2,col="red")
lines(t,y1,col = "blue")
legend(x = 0.004,y = 0.5,legend = c("h=0.0005","h=0.0015"),lty = c(1,1))

#implicit order
h3=0.05
y3 = matrix(0,39)
y3[1]=y0
count=2;
t=seq(0,0.4,0.01)
for (j in seq(0,0.39,0.01)){
  y3[count]=(y3[count-1]+3000*h3-2000*h3*exp(-(j+0.01)))/(1+1000*h3)
  count=count+1
}
plot(t,y3,main = "y vs t",xlab = "t",ylab = "y")
lines(t,y3)