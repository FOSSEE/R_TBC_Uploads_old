#Chapter 1 - Linear Equations In Linear Algebra
#Vectors as columns of a matrix 
#Page No.28 / 1-16
#Prob 7
#1.4.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the three vectors are:')
uv<-c(4,-1,7,-4)
vv<-c(-5,3,-5,1)
wv<-c(7,-8,0,2)
u<-matrix(uv,
          nrow=4,
          ncol=1,
          byrow=TRUE)
v<-matrix(vv,
          nrow=4,
          ncol=1,
          byrow=TRUE)
w<-matrix(wv,
          nrow=4,
          ncol=1,
          byrow=TRUE)

print(u)
print(v)
print(w)
print('u v and w form the columns of A')
A=cbind(u,v,w)
print(A)
print('the augmented matrix is:')
nmv<-c(6,-8,0,-7)
nm<-matrix(nmv,
           nrow=4,
           ncol=1,
           byrow=TRUE)
c=cbind(A,nmv)
print(c)