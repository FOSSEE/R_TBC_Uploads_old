#Example  :  2.2A    Chapter  :   2.2    page no : 50
#Pivots and Multipliers in converting matrix to upper traingular system
matrix(c(1,-1,0,-1,2,-1,0,-1,2),ncol=3)->A
A
print(paste("First pivot is",A[1,1]))
l21<-A[2,1]/A[1,1]
print(paste("Multiplier L21 to convert the second row first element to 0 is",l21))
A[2,]<-A[2,]-l21*A[1,]
A
print(paste("The second pivot is ",A[2,2]))
l32<-A[3,2]/A[2,2]
A[3,]<-A[3,]-l32*A[2,]
print("The equivalent Upper traingular system for the matrix A is ")
A