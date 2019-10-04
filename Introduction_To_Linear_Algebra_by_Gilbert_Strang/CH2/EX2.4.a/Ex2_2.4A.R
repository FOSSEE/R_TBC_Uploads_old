#Example  :  2.4A     Chapter  :  2.4       Page no : 72
#Square of Pascal Matrix is HyperCube Matrix
L<-matrix(c(1,1,1,1,0,1,2,3,0,0,1,3,0,0,0,1),ncol=4)
H<-L%*%L
print("Square of Pascal Matrices is:")
print(H)
H1<-H%*%matrix(c(1,1,1,1),ncol=1)
print(H1)