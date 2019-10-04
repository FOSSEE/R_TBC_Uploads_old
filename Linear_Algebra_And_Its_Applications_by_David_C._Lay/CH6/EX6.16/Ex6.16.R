#Chapter 6- Orthogonality and Least Squares
#Least square solution
#Page No.206 / 6-14
#Prob 7
#6.5.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('The co-efficient matrix is:')
a=matrix(c(1,-2,-1,2,0,3,2,5),4,2,TRUE)
print('A=')
print(a)
print('The RHS is:')
b=matrix(c(3,1,-4,2),4,1,TRUE)
print('b=')
print(b)
print('Product of transpose of A and A=')
p1=t(a) %*% a
print(p1)
print('Product of transpose of A and b=')
p2=t(a) %*% b
print(p2)
print('Forming an augmented matrix to solve the normal equations')
p=cbind(p1,p2)
print(p)
print('performing row operations')
print('R2=R2-R1')
p[2,]=p[2,]-p[1,]
print(p)
print('R1=R1/6 and R2=R2/36')
p[1,]=p[1,]/6
p[2,]=p[2,]/36
print(p)
print('R1=R1-R2')
p[1,]=p[1,]-p[2,]
print(p)
print('Hence, the solution is:')
print(p[,3])
x=p[,3]
print('The least square error is=||Ax-b||')
print('Ax-b=')
print(a %*% x-b)
c=a %*% x-b
s=0
il<-c(1:4)
for (i in il)
{
s=s+c[i,1]^2
}
print('||Ax-b||=')
print(sqrt(s))