#Chapter 5- Eigenvalues and Eigenvectors
#Page No.177 / 5-21
#Prob 13
#5.5.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

i=complex(real=-1,imaginary=-1)
v=matrix(c(i,1),2,1,TRUE)
a=matrix(c(1,-2,1,3),2,2,TRUE)
print(v)
rev=Re(v)
print(rev)
imv=Im(v)
print(imv)
pm=cbind(rev,imv)
print(pm)
cm=solve(pm) %*% a %*% pm
print(cm)