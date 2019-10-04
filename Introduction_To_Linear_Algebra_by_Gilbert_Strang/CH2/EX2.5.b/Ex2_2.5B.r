# Example : 2.5B   Chapter : 2.5   Pageno : 88
# Inverse of the given matrices
B<-matrix(c(4,8,3,7),ncol=2)
C<-matrix(c(6,6,6,0),ncol=2)
S<-matrix(c(1,1,1,0,1,1,0,0,1),ncol=3)
B1<-solve(B)
C1<-solve(C)
S1<-solve(S)
print("Inverses of given matrices ")
print(B1)
print(C1)
print(S1)