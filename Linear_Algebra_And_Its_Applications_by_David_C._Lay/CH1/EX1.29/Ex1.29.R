#Chapter 1 - Linear Equations In Linear Algebra
#Linear Models in Business, Science and Engineering
#Page No.55 / 1-43
#Prob 1
#1.10.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(110,130,295,4,3,9,20,18,48,2,5,8)
a=matrix(av,
         nrow=4,
         ncol=3,
         byrow=TRUE)
print(a)
print('~')
print('interchange R1 and R4')
a[c(1,4),]=a[c(4,1),]
print(a)
print('~')
a[1,]=a[1,]/2
a[3,]=a[3,]/2
print(a)
a1v<-c(1,2.5,4,0,-7,-7,0,-16,-16,0,-145,-145)
a2v<-c(1,2.5,4,0,1,1,0,0,0,0,0,0)
a3v<-c(1,0,1.5,0,1,1,0,0,0,0,0,0)
a1=matrix(a1v,
          nrow=4,
          ncol=3,
          byrow=TRUE)
a2=matrix(a2v,
          nrow=4,
          ncol=3,
          byrow=TRUE)
a3=matrix(a3v,
          nrow=4,
          ncol=3,
          byrow=TRUE)
print(a1)
print('~')
print(a2)
print('~')
print(a3)