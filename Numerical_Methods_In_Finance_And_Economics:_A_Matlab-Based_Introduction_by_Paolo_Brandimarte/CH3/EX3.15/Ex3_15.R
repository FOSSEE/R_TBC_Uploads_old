xdata<-c(1, 5, 10, 30, 50)
ydata<-log(xdata)
p = coef(lm(ydata ~ xdata + I(xdata^2)))
p

x = c(1, 5, 10, 30, 50)
y = log(x)
plot(x,y)
lm2 = lm(y~x+I(x^2))
lm4 = lm(y~x+I(x^2)+I(x^3)+I(x^4))
xplot=seq(from = 0,to = 50,by = .1)
lines(xplot,predict(lm4,newdata=data.frame(x=xplot)), col="blue")
# and so on
lines(xplot,predict(lm2,newdata=data.frame(x=xplot)), col="red")

#http://www.utstat.utoronto.ca/reid/sta414/Rsession-polys.pdf