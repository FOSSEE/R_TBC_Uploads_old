#Chapter 1 - Linear Equations In Linear Algebra
#Free and pivot variables 
#Page No.33 / 1-21
#Prob 1
#1.5.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix is:')
av<-c(2,-5,8,0,-2,-7,1,0,4,2,7,0)
a=matrix(av,
         nrow=3,
         ncol=4,
         byrow=TRUE)
print(a)
print('R2=R2+2*R1 and R3=R3-2*R1')
a[2,]=a[2,]+a[1,]
a[3,]=a[3,]-2*a[1,]
print(a)
print('R3=R3+R2')
a[3,]=a[3,]+a[2,]
print(a)
print('only two columns have non zero pivots')
print('hence, one column is a free column and therefore there exists a non trivial solution')