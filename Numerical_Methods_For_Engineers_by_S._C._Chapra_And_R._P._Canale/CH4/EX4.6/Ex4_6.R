library(Deriv)

DD <- function(expr, name, order = 1) {
  if(order < 1) stop("'order' must be >= 1")
  if(order == 1) D(expr, name)
  else DD(D(expr, name), name, order - 1)
}

f <- function(F,L,E,I) {
  (F*(L^4))/(8*E*I)
}

Fbar=50
#lb/ft
Lbar=30
#ft
Ebar=1.5*(10^8)
#lb/ft^2
Ibar=0.06
#ft^4
deltaF=2
#lb/ft
deltaL=0.1
#ft
deltaE=0.01*(10^8)
#lb/ft^2
deltaI=0.0006
#ft^4
ybar=(Fbar*(Lbar^4))/(8*Ebar*Ibar)

f1 <- function(F) {
  (F*(Lbar^4))/(8*Ebar*Ibar)
}
f_1<-Deriv(f1)
f2 <- function(L) {
  (Fbar*(L^4))/(8*Ebar*Ibar)
}
f_2<-Deriv(f2)
f3 <- function(E) {
  (Fbar*(Lbar^4))/(8*E*Ibar)
}
f_3<-Deriv(f3)
f4 <- function(I) {
  (Fbar*(Lbar^4))/(8*Ebar*I)
}
f_4<-Deriv(f4)
deltay=abs(f_1(Fbar))*deltaF+
  abs(f_2(Lbar))*deltaL+
  abs(f_3(Ebar))*deltaE+
  abs(f_4(Ibar))*deltaI;

cat("The value of y is between:",ybar-deltay,"and",ybar+deltay)
ymin=((Fbar-deltaF)*((Lbar-deltaL)^4))/(8*(Ebar+deltaE)*(Ibar+deltaI));
ymax=((Fbar+deltaF)*((Lbar+deltaL)^4))/(8*(Ebar-deltaE)*(Ibar-deltaI));
cat("ymin is calculated at lower extremes of F, L, E, I values as =",ymin)
cat("ymax is calculated at higher extremes of F, L, E, I values as =",ymax)
