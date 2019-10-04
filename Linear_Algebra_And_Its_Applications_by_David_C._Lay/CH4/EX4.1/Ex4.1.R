#Chapter 4- Vector Spaces
#Subspace of vectors
#Page No.123 / 4-3
#Prob 13c
#4.1.13c

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given vectors are:')
v1=matrix(c(1,0,-1),3,1,TRUE)
print('v1=')
print(v1)
v2=matrix(c(2,1,3),3,1,TRUE)
print('v2=')
print(v2)
v3=matrix(c(4,2,6),3,1,TRUE)
print('v3=')
print(v3)
w=matrix(c(3,1,2),3,1,TRUE)
print('w=')
print(w)
print('It is clear that w is not one of the three vectors in v1,v2 and v3')
print('The span of v1,v2 and v3 contains infinitely many vectors.')
print('To check if w is in the subspace of v1,v2 and v3,')
print('we form an augmented matrix.')
av<-c(1,2,4,3,0,1,2,1,-1,3,6,2)
a=matrix(av,3,4,TRUE)
print(a)
print('performing row operations')
print('R3=R3+R1')
a[3,]=a[3,]+a[1,]
print(a)
print('R3=R3-5xR2')
a[3,]=a[3,]-5*a[2,]
print(a)
print('there is no pivot in the augmented column,')
print('hence the vector equation is consistent and w is in span{v1 v2 v3}.')