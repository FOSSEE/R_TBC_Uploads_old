#Chapter 4- Vector Spaces
#Matix Solution
#Page No.133 / 4-13
#Prob 13
#4.4.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('c1+c3=1')
print('c2+2c3=4')
print('c1+c2+c3=7')

av<-c(1,0,1,1,0,1,2,4,1,1,1,7)
a=matrix(av,3,4,TRUE)
print(a)
a[3,]=a[3,]-1*a[1,]
a[3,]=a[3,]-1*a[2,]
print(a)
a[3,]=a[3,]/-2
a[2,]=a[2,]-2*a[3,]
a[1,]=a[1,]-1*a[3,]
print(a)
ps=a[,4]
print('ps=')
print(ps)
m1=matrix(c(1,0,1),3,1,TRUE)
m2=matrix(c(0,1,1),3,1,TRUE)
m3=matrix(c(1,2,1),3,1,TRUE)
mm=matrix(c(1,4,7),3,1,TRUE)
print('c1')
print(m1)
print('c2')
print(m2)
print('c3')
print(m3)
print('=')
print(mm)