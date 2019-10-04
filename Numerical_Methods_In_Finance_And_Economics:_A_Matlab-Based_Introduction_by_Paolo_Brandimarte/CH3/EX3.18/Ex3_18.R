require(pracma)

x=1: 10
y<-c(8, 2.5, -2, 0, 5, 2, 4, 7 ,4.5, 2)
plot(x,y)
x2<-seq(from = 1, to = 10, by = 0.05)
y2=interp1(x,y,x2, 'spline')
lines(x2,y2)

x=1: 10
y<-c(8, 2.5, -2, 0, 5, 2, 4, 7 ,4.5, 2)
plot(x,y)
pp=cubicspline (x, y)
x2<-seq(from = 1, to = 10, by = 0.05)
y2 = ppval(pp,x2)
lines(x2,y2)

runge <- function(x) {
  1/(1+25*x^2) 
}

# use 11 equispaced nodes
EquiNodes11 = -5:5
ppeq11 = cubicspline(EquiNodes11,runge(EquiNodes11))
xplot=seq(from = -5, to = 5, by = 0.01)

# use 20 equispaced nodes
EquiNodes20 = linspace(-5,5,20)
ppeq20 = cubicspline(EquiNodes20,runge(EquiNodes20))
xplot=seq(from = -5, to = 5, by = 0.01)

# use 21 equispaced nodes
EquiNodes21 = linspace(-5,5,21)
ppeq21 = cubicspline(EquiNodes21,runge(EquiNodes21))
xplot=seq(from = -5, to = 5, by = 0.01)

par(mfrow=c(3,1))
plot(EquiNodes11,runge(EquiNodes11),asp = 1)
lines(EquiNodes11,runge(EquiNodes11))
lines(xplot,ppval(ppeq11,xplot), col="blue")
plot(EquiNodes20,runge(EquiNodes20),asp = 1)
lines(EquiNodes20,runge(EquiNodes20))
lines(xplot,ppval(ppeq20,xplot), col="blue")
plot(EquiNodes21,runge(EquiNodes21),asp = 1)
lines(EquiNodes21,runge(EquiNodes21))
lines(xplot,ppval(ppeq21,xplot), col="blue")