# Example : 1   Chapter : 2.7   Pageno : 108
# Inverses and Transposes
A<-matrix(c(1,6,0,1),ncol=2)
AT<-t(A)
A1<-solve(A)
print("The inverse and transpose of the matrix are ")
print(A1)
print(AT)
print("Transpose of A-1 is ")
print(t(A1))
print("Invere of A transpose is")
print(solve(AT))