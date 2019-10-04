require(pracma)
f <- function(sigma,x,y) {
  (x-1.5)^2+(y-0.5)^2+sigma/(1-x)+sigma/(1-y)
}
X<-meshgrid(x = seq(0.1,.99,.01))$X
Y<-meshgrid(x = seq(0.1,.99,.01))$Y
contour(f(0.1,X,Y))
contour(f(0.01,X,Y))
contour(f(0.001,X,Y))
contour(f(0.0001,X,Y))