u <- function(x,y) {
  x^2+x*y-10
}

v <- function(x,y) {
  y+3*x*y^2-57
}

x=1.5
y=3.5
e<-c(100, 100)
while  (e[1]>0.0001 & e[2]>0.0001){
  J=matrix(data = c(2*x+y, x, 3*y^2, 1+6*x*y),nrow = 2,ncol = 2,byrow = TRUE)
  deter=det(J)
  u1=u(x,y)
  v1=v(x,y)
  x=x-((u1*J[2,2]-v1*J[1,2])/deter)
  y=y-((v1*J[1,1]-u1*J[2,1])/deter)
  e[1]=abs(2-x)
  e[2]=abs(3-y)
}
bracket<-c(x, y)
cat(bracket)