#Chapter 6- Orthogonality and Least Squares
#QR decomposition of a matrix
#Page No.202 / 6-10
#Prob 13
#6.4.13

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('QR decomposition of a matrix')
print('given matrix A=')
a=matrix(c(5,9,1,7,-3,-5,1,5),4,2,TRUE)
print(a)
print('given matrix Q=')
m1=matrix(c(5,-1,1,5,-3,1,1,3),4,2,TRUE)
q=(1/6)*m1
print(q)
print('Therefore, R=')
s=t(q) %*% a
print(s)
qr=q %*% s
print(qr)