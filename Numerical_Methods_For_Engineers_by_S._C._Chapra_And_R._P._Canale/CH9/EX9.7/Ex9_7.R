#part a
a<-matrix(c(3, 2,-1, 2), nrow = 2, ncol = 2,byrow = TRUE)
b1=18
b2=2
cat("The determinant for part(a)=",det(a))
#part b
a<-matrix(c(1, 2,1.1, 2), nrow = 2, ncol = 2,byrow = TRUE)
b1=10
b2=10.4
cat("The determinant for part(b)=",det(a))
#part c
a1=a*10
b1=100
b2=104
cat("The determinant for part(c)=",det(a1))