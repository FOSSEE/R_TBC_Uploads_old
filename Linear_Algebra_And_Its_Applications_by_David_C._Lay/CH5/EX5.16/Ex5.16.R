#Chapter 5- Eigenvalues and Eigenvectors
#Eigenvalues
#Page No.175 / 5-19
#Prob 31
#5.4.31

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('Given matrix A=')
av<-c(-7,-48,-16,1,14,6,-3,-45,-19)
a=matrix(av,3,3,TRUE)
print(a)
print('and matrix P=')
pv<-c(-3,-2,3,1,1,-1,-3,-3,0)
p=matrix(pv,3,3,TRUE)
print(p)
print('Hence, marix D=')
s=solve(p)
Dv=round(s %*% a %*% p)
print(Dv)