#Chapter 4- Vector Spaces
#Linear independence of vectors
#Page No.135 / 4-15
#Prob 27
#4.4.27

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('to check if vectors v1 v2 and v3 are linearly independent')
v1=matrix(c(1,0,0,1),4,1,TRUE)
v2=matrix(c(3,1,-2,1),4,1,TRUE)
v3=matrix(c(0,-1,3,-1),4,1,TRUE)
print('v1=')
print(v1)
print('v2=')
print(v2)
print('v3=')
print(v3)
print('forming an augmented matrix')
av<-c(1,3,0,0,0,1,-1,0,0,-2,3,0,1,0,-1,0)
a=matrix(av,4,4,TRUE)
print('A=')
print(a)
print('performing row operations')
a[4,]=a[4,]+a[1,]
a[1,]=a[1,]-a[4,]
a[1,]=a[1,]/(-1)
print(a)
a[4,]=a[4,]-a[1,]
a[3,]=a[3,]+2*a[2,]
a[4,]=a[4,]+3*a[2,]
a[4,]=a[4,]+4*a[3,]
a[4,]=a[4,]-6*a[2,]
a[4,]=a[4,]-a[1,]
a[4,]=a[4,]/8
a[4,]=a[4,]-a[3,]
print(a)
print('since the vector equation has only the trivial solution')
print('vectors v1 v2 and v3 are linearly independent')