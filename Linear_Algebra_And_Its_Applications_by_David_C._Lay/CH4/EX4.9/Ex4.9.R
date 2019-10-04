#Chapter 4- Vector Spaces
#Dimension of a vector space
#Page No.137 / 4-17
#Prob 3
#4.5.3

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('to find the dimension of subspace H, which is the set of linear combination of vectors v1 v2 and v3')
v1=matrix(c(0,1,0,1),4,1,TRUE)
v2=matrix(c(0,-1,1,2),4,1,TRUE)
v3=matrix(c(2,0,-3,0),4,1,TRUE)
print('v1=')
print(v1)
print('v2=')
print(v2)
print('v3=')
print(v3)
print('Clearly, v1 is not equal to zero')
print('and v2 is not a multiple of v1 as third element of v1 is zero whereas that of v2 is 1.')
print('Also, v3 is not a linear combination of v1 and v2 as the first element of v1 and v2 is zero but that of v3 is 2')
print('Hence, v1 v2 and v3 are linearly independent and dim(H)=3')