#Chapter 2- Matrix Algebra
#Pivot columns
#Page No.97 / 2-35
#Prob 25
#2.8.25

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the given matrix is:')
av<-c(1,4,8,-3,-7,-1,2,7,3,4,-2,2,9,5,5,3,6,9,-5,-2)
a=matrix(av,4,5,TRUE)
print(a)
print('performing row operations')
a[2,]=a[2,]+a[1,]
a[3,]=a[3,]+2*a[1,]
a[4,]=a[4,]-3*a[1,]
a[2,]=a[2,]*(1/6)
a[3,]=a[3,]-10*a[2,]
a[4,]=a[4,]+6*a[2,]
a[3,]=a[3,]*-1
a[4,]=a[4,]-4*a[3,]
a[1,]=a[1,]+3*a[3,]
a[2,]=a[2,]*2
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
a[2,]=a[2,]/2
a[1,]=a[1,]-4*a[2,]
print(a)
print('x1-2x3+7x5=0')
print('x2+2.5x3-0.5x5=0')
print('x4+4x5=0')
print('0=0')
print('x1=2x3-7x5')
print('x2=-2.5x3+0.5x5')
print('x3=x3')
print('x4=-4x5')
print('x5=x5')
