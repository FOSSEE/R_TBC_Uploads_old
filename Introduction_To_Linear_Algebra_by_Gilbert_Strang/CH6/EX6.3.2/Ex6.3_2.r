# Example : 2   Chapter : 6.3     Page No: 314
# Solve Differential equation

# lambda1,lamda2,lambda3,x1,x2,x3,c1,c2,c3 are computed here.. for remaining details look textbook
A<-matrix(c(1,0,0,1,2,0,1,1,3),ncol=3)
lambda<-eigen(A)$values
x<-round(eigen(A)$vectors)
u<-c(9,7,4)
c<-solve(x,u)
print("Lambda 3 and Lambda 2 and Lambda 1 are")
print(lambda)
print("x3 and x2 and x1")
print(x)
print("c3,c2 and c1 are")
print(c)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
