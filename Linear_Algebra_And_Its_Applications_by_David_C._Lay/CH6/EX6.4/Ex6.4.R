#Chapter 6- Orthogonality and Least Squares
#Orthogonality of vectors
#Page No.195 / 6-3
#Prob 1
#6.2.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To verify if u v and w are orthogonal')
u=matrix(c(-1,4,-3),3,1,TRUE)
v=matrix(c(5,2,1),3,1,TRUE)
w=matrix(c(3,-4,-7),3,1,TRUE)
print('u')
print(u)
print('v')
print(v)
print('w')
print(w)
print('u.v=')
print(t(v) %*% u)
print('u.w=')
print(t(u) %*% w)
print('Since u.w is not equal to zero, the set {u v w} is not orthogonal.')