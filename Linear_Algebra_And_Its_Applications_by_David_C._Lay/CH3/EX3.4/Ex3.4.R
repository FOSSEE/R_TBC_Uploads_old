#Chapter 3- Determinants
#Property of determinants
#Page No.110 / 3-4
#Prob 37
#3.1.37

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

Av<-c(3,1,4,2)
A=matrix(Av,2,2,TRUE)
print('the given matrix is:')
print(A)
print('det(A)=')
print(det(A))
print('5 X A = ')
print(5*A)
print('det(5*A)=')
print(det(5*A))
print('thus, det(5A) is not equal to 5Xdet(A)')
print('infact, the relation between det(rA) and det(A) for a nxn matrix is:')
print('det(rA)=(r^n)*det(A)')