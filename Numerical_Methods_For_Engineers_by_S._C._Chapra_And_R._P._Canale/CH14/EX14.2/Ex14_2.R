f <- function(x,y) {
  x*y*y
}

p1<-c(2, 2)
elevation=f(p1[1],p1[2])
dfx=p1[1]*p1[1]
dfy=2*p1[1]*p1[2]
theta=atan(dfy/dfx)
slope=(dfx^2 + dfy^2)^0.5
cat("Elevation:",elevation,"Theta:",theta,"slope:",slope)