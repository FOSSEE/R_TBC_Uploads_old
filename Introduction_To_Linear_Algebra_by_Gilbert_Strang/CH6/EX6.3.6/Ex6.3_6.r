# Example : 6   Chapter : 6.3     Page No: 321
# Solve Differential equation

# lambda1,lamda2,x1,x2,c,d are computed here.. for remaining details look textbook
A<-matrix(c(1,0,1,2),ncol=2)
lambda<-eigen(A)$values
x<-round(eigen(A)$vectors)
u<-c(2,1)
c<-solve(x,u)
print("Lambda 1 and Lambda 2")
print(lambda)
print("x1 and x2")
print(x)
print("c1 and c2 are")
print(c)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0
