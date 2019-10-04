#Chapter 4- Vector Spaces
#Linear Independence
#Page No.148 / 4-28
#Prob 7
#4.8.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(1^0,2^0,(-2)^0,1^1,2^1,(-2)^1,1^2,2^2,(-2)^2)
a=matrix(av,3,3,TRUE)
print(a)
a[2,]=a[2,]-a[1,]
print(a)
a[3,]=a[3,]-a[1,]
print(a)
a[3,]=a[3,]-3*a[2,]
print(a)
print('Hence the set of signals is linearly independent in S')