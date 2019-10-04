A<-matrix(c(3, 1, 4, 1, 5, 3, 4, 3,7),nrow = 3,ncol = 3,byrow = T)
eigen(A)
B<-matrix(c(1,2,3),nrow = 3,ncol = 1,byrow = T)
U = chol(A)
U
solve(U,(solve(t(U),B)))