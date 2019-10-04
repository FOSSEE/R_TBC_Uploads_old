#Chapter 4- Vector Spaces
#Span of vectors
#Page No.135 / 4-15
#Prob 31a
#4.4.31a

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('to check if the polynomials span R3')
print('placing the coordinate vectors of the polynomial into the columns of a matrix')
av<-c(1,-3,-4,1,-3,5,5,0,5,-7,-6,-1)
a=matrix(av,3,4,TRUE)
print('A=')
print(a)
print('performing row operations')
a[2,]=a[2,]+3*a[1,]
a[3,]=a[3,]-5*a[1,]
print(a)
a[3,]=a[3,]+2*a[2,]
print(a)
print('the four vectors DO NOT span R3 as there is no pivot in row 3')

#4.4.31b

print('to check if the polynomials span R3')
print('placing the coordinate vectors of the polynomial into the columns of a matrix')
av1<-c(0,1,-3,2,5,-8,4,-3,1,-2,2,0)
a1=matrix(av1,3,4,TRUE)
print('A=')
print(a1)
print('performing row operations')
a1[c(1,3),]=a1[c(3,1),]
print(a1)
a1[2,]=a1[2,]-5*a1[1,]
print(a1)
a1[3,]=a1[3,]-0.5*a1[2,]
print(a1)
print('the four vectors DO NOT span R3 as there is no pivot in row 3')