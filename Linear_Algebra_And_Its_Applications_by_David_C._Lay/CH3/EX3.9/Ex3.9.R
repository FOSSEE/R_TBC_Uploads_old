#Chapter 3- Determinants
#Linear independency using determinants
#Page No.112 / 3-6
#Prob 25
#3.2.25

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given vectors are:')
v1v<-c(7,-4,-6)
v2v<-c(-8,5,7)
v3v<-c(7,0,-5)
v1=matrix(v1v,3,1,TRUE)
v2=matrix(v2v,3,1,TRUE)
v3=matrix(v3v,3,1,TRUE)
print('v1=')
print(v1)
print('v2=')
print(v2)
print('v3=')
print(v3)
print('combining them as a matrix')
a=cbind(v1,v2,v3)
print('A=')
print(a)
print('if det(A) is not equal to zero, then v1 v2 and v3 are linearly independent')
print('expanding about third column')
print('det(A)=7 X (-28+30) - 5 X (35-32)')
print('=')
print(det(a))
print('hence, v1 v2 and v3 are linearly independent')