#Chapter 2- Matrix Algebra
#Application of LU decomposition
#Page No.83 / 2-21
#Prob 1
#2.5.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('the lower triangular matrix is:')
Lv<-c(1,0,0,-1,1,0,2,-5,1)
L=matrix(Lv,3,3,TRUE)
print(L)
print('the upper triangular matrix is:')
Uv<-c(3,-7,-2,0,-2,-1,0,0,-1)
U=matrix(Uv,3,3,TRUE)
print(U)
print('the RHS of the equations are')
bv<-c(-7,5,2)
b=matrix(bv,3,1,TRUE)
print(b)
print('combining matrices L and b')
cm=cbind(L,b)
print(cm)
print('performing row operations')
print('R2=R2+R1')
cm[2,]=cm[2,]+cm[1,]
print(cm)
print('R3=R3-2*R1')
cm[3,]=cm[3,]-2*cm[1,]
print(cm)
print('R3=R3+5*R2')
cm[3,]=cm[3,]+5*cm[2,]
print(cm)
y=cm[,4]
print('y=')
print(y)
print('combining U and y')
d=cbind(U,y)
print(d)
print('performing row operations')
print('R3=R3/-6')
d[3,]=d[3,]/(-1)
print(d)
print('R2=R2+R3 and R1=R1+2*R3')
d[2,]=d[2,]+d[3,]
d[1,]=d[1,]+2*d[3,]
print(d)
print('R1=R1-3.5*R2')
d[1,]=d[1,]-3.5*d[2,]
print(d)
print('R1=R1/3 and R2=R2/-2')
d[1,]=d[1,]/3
d[2,]=d[2,]/(-2)
print(d)
print('the solution is:')
x=d[,4]
print('x=')
print(x)