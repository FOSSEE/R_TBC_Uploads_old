#Chapter 1 - Linear Equations In Linear Algebra
#Linear independence of vectors 
#Page No.42 / 1-30
#Prob 1
#1.7.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('given vectors u, v and w are')
uv<-c(5,0,0)
um=matrix(uv,
         nrow=1,
         ncol=3,
         byrow=TRUE)
u=t(um)
print(u)
vv<-c(7,2,-6)
vm=matrix(vv,
          nrow=1,
          ncol=3,
          byrow=TRUE)
v=t(vm)
print(v)
wv<-c(9,4,-8)
wm=matrix(wv,
         nrow=1,
         ncol=3,
         byrow=TRUE)
w=t(wm)
print(w)
print('the augmented matrix is')
av<-c(5,7,9,0,0,2,4,0,0,-6,-8,0)
a=matrix(av,
         nrow=3,
         ncol=4,
         byrow=TRUE)
print(a)
print('R3=R3+3*R2')
a[3,]=a[3,]+3*a[2,]
print(a)
print('there are no free variables')
print('hence, the homogeneous equation has only trivial solution and  the vectors are linearly independent')