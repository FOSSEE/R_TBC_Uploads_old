# Example : 1   Chapter : 9.3     Page No: 482
# Powers of some matrices can be calculated easily with max eigen value
B<-matrix(c(0.6,0.6,0.5,0.5),ncol=2)
B1<-matrix(c(0.6,0,1.1,0.5),ncol=2)
lambda<-eigen(B)$values
lambda1<-eigen(B1)$values
lmax<-lambda[1]
l1max<-lambda1[1]
print("Lambda max of B is")
print(lmax)
print("Lambda max of B1 is ")
print(l1max)
B2<-B%*%B
print("B square is")
print(B2)
B2<-lmax*B
print(B2)
print("B1 square has 0.6*0.6 and 0.5*0.5 on its diagonal")
B12<-B1%*%B1
print(B12)
