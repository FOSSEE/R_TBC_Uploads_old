#Chapter 6- Orthogonality and Least Squares
#Norm of a vector
#Page No.193 / 6-1
#Prob 7
#6.1.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('w=')
w=matrix(c(3,-1,-5),3,1,TRUE)
print(w)
wv=w[1]^2+w[2]^2+w[3]^2
print('||w||=sqrt(9+1+25)')
print(sqrt(wv))