#Chapter 2- Matrix Algebra
#Pivot columns
#Page No.98 / 2-36
#Prob 37
#2.8.37

#clear console
cat("\014")
#clear variables
rm(list=ls(all=TRUE))
av<-c(3,-5,0,-1,3,-7,9,-4,9,-11,-5,7,-2,5,-7,3,-7,-3,4,0)
a=matrix(av,4,5,TRUE)
print(a)
a[1,]=a[1,]*(1/3)
a[2,]=a[2,]+7*a[1,]
a[3,]=a[3,]+5*a[1,]
a[4,]=a[4,]+(-3)*a[1,]
a[2,]=a[2,]*(-3/8)
a[3,]=a[3,]+(4/3)*a[2,]
a[4,]=a[4,]+2*a[2,]
a[1,]=a[1,]+(5/3)*a[2,]
a[4,]=ceiling(a[4,])#the numbers are very small 
a[3,]=floor(a[3,])#the numbers are very small 
a[1,2]=ceiling(a[1,2])
print(a)
il<-c(1:4)
jl<-c(1:5)
for(i in il){
  for(j in jl){
    if(a[i,j]!=0){
      cat('column ',j,' is a pivot column\n')
      break
    }
  }
}
print('x1+2.5x3-4.5x4+3.5x5=0')
print('x2+1.5x3-2.5x4+1.5x5=0')
print('x3,x4,x5 are free')