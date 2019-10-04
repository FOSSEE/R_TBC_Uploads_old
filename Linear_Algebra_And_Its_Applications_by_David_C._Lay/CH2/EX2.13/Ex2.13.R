#Chapter 2- Matrix Algebra
#Application of matrix algebra
#Page No.91 / 2-29
#Prob 7
#2.6.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the consumption matrix is:')
Cv<-c(0,.5,.6,.2)
Cm=matrix(Cv,2,2,TRUE)
print(Cm)
print('the demand for 1 unit of output sector 1')
d1=matrix(c(1,0),2,1,TRUE)
print(d1)
print('the production required to satisfy demand d1 is:')
x1=solve(diag(2)-Cm) %*% d1
print('x1=')
print(x1)
print('the final demand is:')
d2=matrix(c(51,30),2,1,TRUE)
print('d2=')
print(d2)
print('the production required to satisfy demand d2 is:')
x2=solve(diag(2)-Cm) %*% d2
print('x2=')
print(x2)