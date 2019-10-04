# Example : 2.1A  Chapter : 2.1   Pageno : 39
#Solving the equations by Column picture
#Column Picture : solution is the linear combination of columns of A that makes b
A=matrix(c(1,2,3,3,2,5,2,2,6),ncol=3)
b=c(-3,-2,-5)
x<-solve(A,b)
x
#if b=(4,4,8)
b=c(4,4,8)
x<-solve(A,b)
x