h=0.01
delx=2
x=2+h*delx^2
a<-matrix(c(x, -1, 0, 0,-1, x, -1, 0, 0, -1, x, -1, 0, 0, -1, x),nrow = 4,ncol = 4,byrow = TRUE)
b<-matrix(c(40.8, 0.8, 0.8, 200.8),nrow = 4,ncol = 1,byrow = TRUE)
T=solve(a,b)
cat("The temperature at the interior nodes:",abs(T))