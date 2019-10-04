#Chapter 3- Determinants
#Determinant of a matrix
#Page No.108 / 3-2
#Prob 1
#3.1.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
Av<-c(3,0,4,2,3,2,0,5,-1)
A=matrix(Av,3,3,TRUE)
print(A)
print('calculating det(A) using cofactor expression along first row')
print('det(A)=3 X (-1 X 3-5 X 2)+4 X (2 X 5-3 X 0)')
print('det(A) =')
print(det(A))