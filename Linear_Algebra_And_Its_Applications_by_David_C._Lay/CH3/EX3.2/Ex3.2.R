#Chapter 3- Determinants
#Determinant of a matrix
#Page No.108 / 3-2
#Prob 7
#3.1.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given matrix is:')
Av<-c(4,3,0,6,5,2,9,7,3)
A=matrix(Av,3,3,TRUE)
print(A)
print('calculating det(A) using cofactor expression along first row')
print('det(A)=4 X (5 X 3-7 X 2)-3 X (6 X 3-9 X 2)')
print('det(A) =')
print(det(A))