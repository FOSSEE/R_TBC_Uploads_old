#Chapter 2- Matrix Algebra
#Application of matrix algebra
#Page No.91 / 2-29
#Prob 1
#2.6.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the consumption matrix is:')
cv<-c(.1,.6,.6,.3,.2,0,.3,.1,.1)
cm=matrix(cv,3,3,TRUE)
print(cm)
print('Assuming that agriculture plans to produce 100 units and other units produce nothing')
print('the production vector is given by')
x=matrix(c(0,100,0),3,1,TRUE)
print('x=')
print(x)
print('thus the intermediate demand is:')
print(cm %*% x)