#Chapter 5- Eigenvalues and Eigenvectors
#Page No.177 / 5-21
#Prob 19
#5.5.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

a=matrix(c(1.52,-0.7,0.56,0.4),2,2,TRUE)
print(a)
lambdap1=(1.92)/2
lambdap2=sqrt(abs(-0.3136))/2
i=complex(real=0,imaginary=lambdap2)
print('lambda = ')
cat(lambdap1+i)
print('or')
cat(lambdap1-i)
print('if x2=2')
iv=complex(real=2,imaginary=-1)
vm=matrix(c(iv,2),2,1,TRUE)
print('v=')
print(vm)
revm=Re(vm)
imvm=Im(vm)
print(revm)
print(imvm)
p=cbind(revm,imvm)
print(p)
fm=solve(p) %*% a %*% p
print(fm)