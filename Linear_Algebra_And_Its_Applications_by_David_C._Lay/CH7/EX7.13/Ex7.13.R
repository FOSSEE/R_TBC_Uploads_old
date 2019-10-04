#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Applications to Image Processing and Statistics 
#Page No.237 / 7-17
#Prob 1
#7.5.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

xv<-c(19,22,6,3,2,20,22,6,9,15,13,5)
x=matrix(xv,2,6,TRUE)
B=x
print(x)
M=matrix(c(12,10),2,1,TRUE)
print(M)
B[1,]=x[1,] - M[1]
B[2,]=x[2,] - M[2]
print(B)
#There is a calculation error in the textbook 
S1=B %*% t(B)
S=S1/(dim(B)[2]-1)
print(S)