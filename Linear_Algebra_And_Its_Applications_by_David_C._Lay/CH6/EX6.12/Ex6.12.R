#Chapter 6- Orthogonality and Least Squares
#Gram Schimdt Orthogonalisation
#Page No.202 / 6-10
#Prob 1
#6.4.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('to orthogonalise the given vectors using Gram-Schimdt orthogonalisation')
x1=matrix(c(3,0,-1),3,1,TRUE)
x2=matrix(c(8,5,-6),3,1,TRUE)
print('x1=')
print(x1)
print('x2=')
print(x2)
print('Let v1=x1')
v1=x1
print('v2=x2-((x2.v1)/(v1.v1))*v1')
a1=t(x2) %*% v1
a2=t(v1) %*% v1
av=(a1/a2)
p=av[1]*v1
v2=x2-p
print('=')
print(x2)
print('-')
print(p)
print('=')
print(v2)
print('Thus, an orthogonal basis is:')
print(v1)
print(v2)