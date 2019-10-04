#Chapter 6- Orthogonality and Least Squares
#Orthogonal projection
#Page No.199 / 6-7
#Prob 13
#6.3.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Given vectors are:')
v1=matrix(c(2,-1,-3,1),4,1,TRUE)
v2=matrix(c(1,1,0,-1),4,1,TRUE)
z=matrix(c(3,-7,2,3),4,1,TRUE)
print('v1=')
print(v1)
print('v2=')
print(v2)
print('z=')
print(z)
a=t(v1) %*% v2
print('v1.v2=')
print(a)
if(a==0){
print('v1 and v2 are orthogonal')
}
print('By best approximation theorem, closest point in span{v1 v2} to z is the orthogonal projection')
print('=((z.v1)/(v1.v1))*v1+((z.v2)/(v2.v2))*v2')
a1=t(z) %*% v1
a2=t(v1) %*% v1
b1=t(z) %*% v2
b2=t(v2) %*% v2
av=(a1/a2)
bv=(b1/b2)
print('=')
print(av[1]*v1)
print('+')
print(bv[1]*v2)
print('=')
zb=(av[1]*v1)+(bv[1]*v2)
print(zb)
zn=z-zb
print(zn)
zn=zn/4
print(zn)