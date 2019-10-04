#Chapter 6- Orthogonality and Least Squares
#Least square solution
#Page No.205 / 6-13
#Prob 1
#6.5.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('The co-efficient matrix is:')
a=matrix(c(-1,2,2,-3,-1,3),3,2,TRUE)
print('A=')
print(a)
print('The RHS is:')
b=matrix(c(4,1,2),3,1,TRUE)
print(b)
print('Product of transpose of A and A=')
p1=t(a) %*% a
print(p1)
print('Product of transpose of A and b=')
p2=t(a) %*% b
print(p2)
print('Hence, the solution is:')
p=solve(p1) %*% p2
print(p)