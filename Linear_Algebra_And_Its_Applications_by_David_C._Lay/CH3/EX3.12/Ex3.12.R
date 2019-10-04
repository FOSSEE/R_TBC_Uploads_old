#Chapter 3- Determinants
#Applicant of determinant
#Page No.117 / 3-11
#Prob 19
#3.3.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the points forming the parrallelogram are')
print('(0,0),(5,2),(6,4),(11,6)')
print('using the vertices adjacent to origin to form a matrix')
Av<-c(5,6,2,4)
A=matrix(Av,2,2,TRUE)
print('A=')
print(A)
print('Area of parallelogram = det(A)')
print('=')
print(det(A))