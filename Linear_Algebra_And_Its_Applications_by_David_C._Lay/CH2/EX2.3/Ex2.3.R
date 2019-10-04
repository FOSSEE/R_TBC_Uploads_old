#Chapter 2- Matrix Algebra
#Inverse of a matrix
#Page No.67 / 2-5
#Prob 7
#2.2.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the co-efficient matrix is:')
av<-c(1,2,5,12)
a=matrix(av,2,2,TRUE)
print(a)
print('inverse of the matrix is:')
print(solve(a))
print('solution is:')

b1v<-c(-1,3)
b1=matrix(b1v,2,1,TRUE)
c=solve(a)
res=c %*% b1
print(res)

b2v<-c(1,-5)
b2=matrix(b2v,2,1,TRUE)
res1=c %*% b2
print(res1)

b3v<-c(2,6)
b3=matrix(b3v,2,1,TRUE)
res2=c %*% b3
print(res2)

b4v<-c(3,5)
b4=matrix(b4v,2,1,TRUE)
res3=c %*% b4
print(res3)

cm=cbind(a,b1,b2,b3,b4)
print(cm)
cm[2,]=cm[2,]-5*cm[1,]
print(cm)
cm[2,]=cm[2,]/2
print(cm)
cm[1,]=cm[1,]-2*cm[2,]
print(cm)