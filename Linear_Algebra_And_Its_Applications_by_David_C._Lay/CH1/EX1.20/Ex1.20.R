#Chapter 1 - Linear Equations In Linear Algebra
#Intersection Equations
#Page No.40 / 1-28
#Prob 13
#1.6.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av1<-c(1,-1,0,0,0,0,-50,0,1,-1,1,-1,0,0,0,0,0,0,1,-1,60,0,0,0,1,0,-1,50,1,0,-1,0,0,0,-40)
a1=matrix(av1,
         nrow=5,
         ncol=7,
         byrow=TRUE)
print(a1)
av2<-c(1,-1,0,0,0,0,-50,0,1,-1,1,-1,0,0,0,0,0,1,0,-1,50,0,0,0,0,1,-1,60,0,0,0,0,0,0,0)
a2=matrix(av2,
         nrow=5,
         ncol=7,
         byrow=TRUE)
print('..by reduction')
print(a2)
av3<-c(1,0,-1,0,0,0,-40,0,1,-1,0,0,0,10,0,0,0,1,0,-1,50,0,0,0,0,1,-1,60,0,0,0,0,0,0,0)
a3=matrix(av3,
         nrow=5,
         ncol=7,
         byrow=TRUE)
print('..by reduction')
print(a3)
print('part-a')
print('the general solution is:')
print('x1=x3-40')
print('x2=x3+10')
print('x3 is free')
print('x4=x6+50')
print('x5=x6+60')
print('x6 is free')
print('part-b')
print('x3>=40')
print('x2>=50')
print('x4>=50')
print('x5>=60')
print('the minimum flows are:')
print('x2=50')
print('x3=40')
print('x4=50')
print('x5=60')