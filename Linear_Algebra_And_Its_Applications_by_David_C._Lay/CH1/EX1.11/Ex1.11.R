#Chapter 1 - Linear Equations In Linear Algebra
#Applications of Gaussian Elimination
#Page No.26 / 1-14
#Prob 31
#1.3.31

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('1 gram at (0,1), 1 gram at (8,1) and 1 gram at (2,4)')
m1v<-c(0,1)
m2v<-c(8,1)
m3v<-c(2,4)
m1=matrix(m1v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
m2=matrix(m2v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
m3=matrix(m3v,
          nrow=2,
          ncol=1,
          byrow=TRUE)
cm=(1/3)*(1*m1+1*m2+1*m3)
print('centre of mass is at')
print(cm)
print('the new weight of the system=9 grams')
print('new centre of mass is at')
sv<-c(2,2)
s=matrix(
  sv,
  nrow=2,
  ncol=1,
  byrow=TRUE
)
print(s)
print('let w1,w2 and w3 be the weights added at (0,1),(8,1) and (2,4) respectively')
print('hence, w1+w2+w3=6')
print('using the formula for the centre of mass, we get')
print('8*w2+2*w3=8 and w1+w2+4*w3=12')
av<-c(1,1,1,6,0,8,2,8,1,1,4,12)
a=matrix(
  av,
  nrow=3,
  ncol=4,
  byrow=TRUE
)
print('the augmented matrix is:')
print(a)
print('R3=R3-R1')
a[3,]=a[3,]-a[1,]
print(a)
print('R3=(1/3)*R3')
a[3,]=(1/3)*a[3,]
print(a)
print('R2=R2-2*R3 and R1=R1-R3')
a[2,]=a[2,]-2*a[3,]
a[1,]=a[1,]-a[3,]
print(a)
print('R1=R1-(1/8)*R2')
a[1,]=a[1,]-(1/8)*a[2,]
print(a)
print('R2=(1/8)*R2')
a[2,]=(1/8)*a[2,]
print(a)
cat(sprintf('Add %.1f grams at (0,1), %.1f grams at (8,1) and %d grams at (2,4)',a[1,4],a[2,4],a[3,4]) )