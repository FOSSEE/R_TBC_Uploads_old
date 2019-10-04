#Chapter 6- Orthogonality and Least Squares
#Distance between two points
#Page No.193 / 6-1
#Prob 13
#6.1.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Vector x and y are:')
x=matrix(c(10,-3),2,1,TRUE)
y=matrix(c(-1,-5),2,1,TRUE)
print(x)
print(y)
xyv=((x[1]-y[1])^2+(x[2]-y[2])^2)
print('||x-y||=sqrt(125)')
print('=')
print(sqrt(xyv))