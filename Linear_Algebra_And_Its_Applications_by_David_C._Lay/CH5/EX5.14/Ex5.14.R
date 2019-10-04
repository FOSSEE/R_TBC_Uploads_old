#Chapter 5- Eigenvalues and Eigenvectors
#Transform of matrix
#Page No.172 / 5-16
#Prob 1
#5.4.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

b1=matrix(c(3,-5),1,2,TRUE)
b2=matrix(c(-1,6),1,2,TRUE)
b3=matrix(c(0,4),1,2,TRUE)
b1t=t(b1)
b2t=t(b2)
b3t=t(b3)
cm=cbind(b1t,b2t,b3t)
print(cm)