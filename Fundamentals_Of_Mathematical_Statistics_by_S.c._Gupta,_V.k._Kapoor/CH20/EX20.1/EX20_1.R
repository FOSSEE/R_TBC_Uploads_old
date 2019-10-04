#Page number--20.8
#Example number--20.1

x=seq(0,4,1)
e=x-2
y=c(1,1.8,3.3,4.5,6.3)
q=e
y0=y*e
data.frame(x,e,y,q,y0)

b0=sum(y)/length(x)
b0
b1=sum(y0)/sum(e^2)
b1
#WE get the following equation
# y = 1.33*x + 0.72