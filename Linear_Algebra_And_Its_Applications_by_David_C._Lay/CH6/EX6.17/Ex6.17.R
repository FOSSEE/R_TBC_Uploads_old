#Chapter 6- Orthogonality and Least Squares
#Least square solution
#Page No.207 / 6-15
#Prob 13
#6.5.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To determine if u is the least square solution to Ax=b')
print('Given')
a=matrix(c(3,4,-2,1,3,4),3,2,TRUE)
print('A=')
print(a)
b=matrix(c(11,-9,5),3,1,TRUE)
print('b=')
print(b)
u=matrix(c(5,-1),2,1,TRUE)
v=matrix(c(5,-2),2,1,TRUE)
print('u=')
print(u)
print('v=')
print(v)
print('Au=')
print(a %*% u)
c=b-a %*% u
print('b-Au=')
print(c)
print('||b-Au||=')
print(sqrt(c[1,1]^2+c[2,1]^2+c[3,1]^2))
print('Av=')
print(a %*% v)
d=b-a %*% v
print('b-Av=')
print(d)
print('||b-Av||=')
print(sqrt(d[1,1]^2+d[2,1]^2+d[3,1]^2))
print('Since Av is more closer to A than Au, u is not the least square solution.')