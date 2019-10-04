require(Matrix)
A<-matrix(c(1, 4, -2, -3,9, 8, 5 ,1,-6),nrow = 3,ncol = 3,byrow = TRUE)
tmp=expand(lu(Matrix(A)))
tmp$L
tmp$U
tmp$P
b <-matrix(c(1,2,3),nrow = 3,ncol = 1,byrow = T)
solve(A,b)
tmp_P<-matrix(c(0,0,1,0,1,0,1,0,0),nrow = 3,ncol = 3,byrow = T)
x = solve(tmp$U,solve(tmp$L,(tmp_P%*%b)))