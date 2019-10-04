#Chapter 5- Eigenvalues and Eigenvectors
#Page No.179 / 5-23
#Prob 1
#5.6.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

v1=matrix(c(1,1),2,1,TRUE)
v2=matrix(c(-1,1),2,1,TRUE)
cat('v1=',v1)
print('')
cat('v2=',v2)
x0=matrix(c(9,1),2,1,TRUE)
nm=cbind(v1,v2,x0)
print(nm)
nm[1,]=nm[1,]+nm[2,]
nm[1,]=nm[1,]/2
nm[2,]=nm[2,]-nm[1,]
print(nm)
nv1=matrix(c(15,15),2,1,TRUE)
nv2=matrix(c((-4/3),(4/3)),2,1,TRUE)
nvv=nv1-nv2
print(nvv)