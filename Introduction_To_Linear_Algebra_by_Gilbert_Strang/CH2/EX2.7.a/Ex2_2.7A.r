# Example : 2.7A   Chapter : 2.7   Pageno : 114
# Multiplication by Permutation matrices
P<-matrix(c(0,0,1,1,0,0,0,1,0),ncol=3)
A<-matrix(c(1,4,5,4,2,6,5,6,3),ncol=3)
Q<-t(P)
PA<-P%*%A
PAQ<-PA%*%Q
print("P*A")
print(PA)
print("P*A*Q")
print(PAQ)