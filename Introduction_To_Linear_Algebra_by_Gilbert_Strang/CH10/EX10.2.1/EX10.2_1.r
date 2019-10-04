# Example : 1   Chapter : 10.2     Page No: 502
# Orthogonal Complex vectors
i<-complex(real=0,imaginary=1)
u<-matrix(c(1,i),ncol=1)
ut<-t(u)
#take conjugate of ut
ut[1,2]<-Conj(ut[1,2])
v<-matrix(c(i,1),ncol=1)
print("inner product of u and v is conj(u tanspose )* v is  ")
innerproduct<-ut%*%v
print(innerproduct)
print("As innerproduct is zero , they are orthogonal complex vectors")

