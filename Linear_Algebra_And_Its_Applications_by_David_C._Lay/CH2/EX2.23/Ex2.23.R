#Chapter 2- Matrix Algebra
#Dimension of a matrix
#Page No.102 / 2-40
#Prob 13
#2.9.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(1,-3,2,-4,-3,9,-1,5,2,-6,4,-3,-4,12,2,7)
a=matrix(av,4,4,TRUE)
print(a)
print('performing row operations')
a[2,]=a[2,]-(a[2,1]/a[1,1])*a[1,]
a[3,]=a[3,]-(a[3,1]/a[1,1])*a[1,]
a[4,]=a[4,]-(a[4,1]/a[1,1])*a[1,]
print(a)
a[4,]=a[4,]-2*a[2,]
print(a)
a[4,]=a[4,]-a[3,]
print(a)
k=0
il=c(1:4)
jl=c(1:4)
for(i in il)
{for (j in jl){
if(a[i,j]!=0){
  k=k+1
break
}
}
}
print('dimension of the matrix=')
print(k)