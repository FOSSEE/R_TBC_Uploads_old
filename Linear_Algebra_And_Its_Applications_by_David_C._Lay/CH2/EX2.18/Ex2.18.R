#Chapter 2- Matrix Algebra
#Pivot columns
#Page No.96 / 2-34
#Prob 23
#2.8.23

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(4,5,9,-2,6,5,1,12,3,4,8,-3)
a=matrix(av,3,4,TRUE)
print(a)
print('performing row operaions')
a[1,]=a[1,]*(1/4)
a[2,]=a[2,]-6*a[1,]
a[3,]=a[3,]-3*a[1,]
a[2,]=a[2,]*(-2/5)
a[3,]=a[3,]+(-1/4)*a[2,]
a[1,]=a[1,]+(-5/4)*a[2,]
a[1,]=a[1,]+2*a[2,]
print(a)
il<-c(1:3)
jl<-c(1:4)
for(i in il){
  for(j in jl){
    if(a[i,j]!=0){
      cat('column ',j,' is a pivot column\n')
      break
    }
  }
}
a[1,]=a[1,]-2*a[2,]
zm=matrix(0,3,1,TRUE)
c=cbind(a,zm)
print(c)
print('x1-4x3+7x4=0')
print('x2+5x3-6x4=0')
print('0=0')