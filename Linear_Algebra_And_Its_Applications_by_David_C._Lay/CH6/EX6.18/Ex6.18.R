#Chapter 6- Orthogonality and Least Squares
#Least squares line
#Page No.209 / 6-17
#Prob 1
#6.6.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To obtain a least sqaure line from the given data')
print('Placing the x coordinates of the data in second column of matrix X we get:')
x=matrix(c(1,0,1,1,1,2,1,3),4,2,TRUE)
print('X=')
print(x)
print('Placing the y coordinates in y vector')
y=matrix(c(1,1,2,2),4,1,TRUE)
print('y=')
print(y)
print('Product of transpose of X and X=')
p1=t(x) %*% x
print(p1)
print('Product of transpose of X and y=')
p2=t(x) %*% y
print(p2)
print('The least square solution =')
print(solve(p1) %*% p2)
p=solve(p1) %*% p2
print('Hence, the least square line is:')
print('y')
print('=')
print(p[1,1])
print('+')
print(p[2,1])
print('x')