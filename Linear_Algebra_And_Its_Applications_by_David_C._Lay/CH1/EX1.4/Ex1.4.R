#Chapter 1 - Linear Equations In Linear Algebra
#Condition for a solution to exist
#Page No.16 / 1-4
#Prob 19
#1.1.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the augmented matrix for h=2')
av<-c(1,2,4,3,6,8)
a=matrix(av,
         nrow=2,
         ncol=3,
         byrow=TRUE)
print(a)
print('R2-2*R1')
a[2,]=a[2,]-3*a[1,]
print(a)
print('from R3 we get 0=-4')
print('hence, if h=2 no solution, else solution exists')
