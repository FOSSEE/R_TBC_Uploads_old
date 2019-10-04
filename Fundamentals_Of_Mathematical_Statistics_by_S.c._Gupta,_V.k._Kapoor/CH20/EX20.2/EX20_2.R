#Page number--20.9
#Example number--20.2

x=seq(0.5,3,0.5)
e=4*x-7
y=c(72,110,158,214,290,380)
q=e
q2=c(5,-1,-4,-4,-1,5)
y0=y*q
y1=y*q2
data.frame(x,e,y,q,q2,y0,y1)

b0=sum(y)/length(x)
b0
b1=sum(y0)/sum(e^2)
b1
b2=sum(y1)/sum(q2^2)
b2

#WE get the following equation
# y = 106.32*x^2 - 128.04*x + 83.08