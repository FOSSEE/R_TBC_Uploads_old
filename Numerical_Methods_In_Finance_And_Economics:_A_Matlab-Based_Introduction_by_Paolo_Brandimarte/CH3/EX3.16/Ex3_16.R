x=1:10
y<-c(8, 2.5, -2, 0 ,5 ,2 ,4 ,7 ,4.5, 2)
lm9 = lm(y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7)+I(x^8)+I(x^9))
xplot=seq(from = 0,to = 10,by = .05)
plot(x,y)
lines(xplot,predict(lm9,newdata=data.frame(x=xplot)), col="blue")