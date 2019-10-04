a<-matrix(c(70, 1, 0,60, -1, 1,40, 0 ,-1),nrow = 3,ncol = 3,byrow = TRUE)
b<-matrix(c(636,518,307),nrow = 3,ncol = 1,byrow = TRUE)
x=abs(solve(a,b))
cat("a=",x[1],"m/s^2","\n","T=",x[2],"N","\n","R=",x[3],"N","\n")