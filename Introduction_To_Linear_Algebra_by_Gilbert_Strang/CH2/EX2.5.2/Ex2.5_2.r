# Example : 2   Chapter : 2.5   Pageno : 82
# Inverse of an Elimination Matrix
E<-matrix(c(1,-5,0,0,1,0,0,0,1),ncol=3)
E1<-solve(E)
print("The inverse of the given elimination matrix is")
print(E1)