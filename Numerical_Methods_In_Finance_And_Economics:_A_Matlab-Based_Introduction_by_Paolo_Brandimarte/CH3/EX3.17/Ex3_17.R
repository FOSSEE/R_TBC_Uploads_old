runge <- function(x) {
  1/(1+25*x^2) 
}
 
EquiNodes = -5:5
peq = coef(lm(runge(EquiNodes)~EquiNodes+I(EquiNodes^2)+I(EquiNodes^3)+I(EquiNodes^4)+I(EquiNodes^5)+I(EquiNodes^6)+I(EquiNodes^7)+I(EquiNodes^8)+I(EquiNodes^9)+I(EquiNodes^10)))

x = -5:5
y = runge(x)
lm10 = lm(y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7)+I(x^8)+I(x^9)+I(x^10))
xplot=seq(from = -5,to = 5,by = .01)
plot(x,y,asp = .33)
lines(x,y)
grid(10,10)
lines(xplot,predict(lm10,newdata=data.frame(x=xplot)), col="blue")

ChebNodes = 5*cos(pi*(11 - (1:11) + 0.5)/11)
pcheb = coef(lm(runge(ChebNodes)~ChebNodes+I(ChebNodes^2)+I(ChebNodes^3)+I(ChebNodes^4)+I(ChebNodes^5)+I(ChebNodes^6)+I(ChebNodes^7)+I(ChebNodes^8)+I(ChebNodes^9)+I(ChebNodes^10)))

x = 5*cos(pi*(11 - (1:11) + 0.5)/11)
y = runge(x)
plot(x,y,asp = 1)
lines(x,y)
lm10 = lm(y~x+I(x^2)+I(x^3)+I(x^4)+I(x^5)+I(x^6)+I(x^7)+I(x^8)+I(x^9)+I(x^10))
xplot=seq(from = -5,to = 5,by = .01)
lines(xplot,predict(lm10,newdata=data.frame(x=xplot)), col="blue")