#Chapter 1 - Linear Equations In Linear Algebra
#Introduction to Linear Transformations
#Page No.46 / 1-34
#Prob 5
#1.8.5

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av1<-c(1,-5,-7,-2,-3,7,5,-2)
av2<-c(1,-5,-7,-2,0,1,2,1)
av3<-c(1,0,3,3,0,1,2,1)
am1=matrix(av1,
           nrow=2,
           ncol=4,
           byrow=TRUE)
am2=matrix(av2,
           nrow=2,
           ncol=4,
           byrow=TRUE)
am3=matrix(av3,
           nrow=2,
           ncol=4,
           byrow=TRUE)
print(am1)
print('~')
print(am2)
print('~')
print(am3)
print('x1=3-3*x3')
print('x2=1-2*x3')
print('x3 is free')
print('General Solution')
m1v<-c(3,1,0)
m1=matrix(m1v,
          nrow=3,
          ncol=1,
          byrow=TRUE)
m2v<-c(-3,-2,1)
m2=matrix(m2v,
          nrow=3,
          ncol=1,
          byrow=TRUE)
print(m1)
print('+ x3*')
print(m2)
print('when x3=0')
mv<-c(3,1,0)
m=matrix(mv,
         nrow=3,
         ncol=1,
         byrow=TRUE)
print(m)