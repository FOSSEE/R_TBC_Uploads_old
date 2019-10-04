#Chapter 5- Eigenvalues and Eigenvectors
#Page No.170 / 5-14
#Prob 29
#5.3.29

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

p1=matrix(c(1,1,-2,-1),2,2,TRUE)
d1=matrix(c(3,0,0,5),2,2,TRUE)
print('p1=')
print(p1)
print('d1=')
print(d1)
p2=matrix(c(-3,1,6,-1),2,2,TRUE)
print('p2=')
print(p2)
A=p1*d1*solve(p1)
A1=p2*d1*solve(p2)
print('P1D1P1^-1')
print(A)
print('P2D1P2^-1')
print(A1)
print(A==A1)
print('Hence, A=P1D1P1^-1=P2D1P2^-1')