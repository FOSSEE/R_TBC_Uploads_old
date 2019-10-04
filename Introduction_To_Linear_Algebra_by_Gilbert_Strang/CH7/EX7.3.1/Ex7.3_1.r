# Example : 1   Chapter : 7.3     Page No: 400
# Diagonaliazation of matrix
A<-matrix(c(0.5,-0.5,-0.5,0.5),ncol=2)
ev<-eigen(A)$values
D<-matrix(c(ev[1],0,0,ev[2]),ncol=2)
print("The diagonialized matrix")
print(D)