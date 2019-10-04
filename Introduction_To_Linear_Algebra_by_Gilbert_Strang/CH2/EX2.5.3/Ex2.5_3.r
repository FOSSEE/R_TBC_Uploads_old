# Example : 3   Chapter : 2.5   Pageno : 83
# Inverse of product of matrices
E<-matrix(c(1,-5,0,0,1,0,0,0,1),ncol=3)
E1<-solve(E)
F<-matrix(c(1,0,0,0,1,-4,0,0,1),ncol=3)
F1<-solve(F)
print(F1)
FE<-F%*%E
print(FE)
print("Inverse of FE ")
FE1<-solve(FE)
print(FE1)
print("Inverse of FE can also be E-1*F-1 ")
print(E1%*%F1)
