#Chapter 6- Orthogonality and Least Squares
#Orthogonal decomposition theorem
#Page No.200 / 6-8
#Prob 19
#6.3.19

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('By orthogonal decomposition theorem,')
print('u3 is the sum of a vector in W=span{u1 u2} and a vector v orthogonal to W')
print('To find v, given u1 and u2')
u1=matrix(c(1,1,-2),3,1,TRUE)
u2=matrix(c(5,-1,2),3,1,TRUE)
print('u1=')
print(u1)
print('u2=')
print(u2)
print('Projection of u3 on W')
print('= (-1/3)*u1+(1/15)*u2')
print('=')
print((-1/3)*u1+(1/15)*u2)
print('v= u3-(projection of u3 on W)')
print('=')
m1=matrix(c(0,0,1),3,1,TRUE)
print(m1)
print('-')
print((-1/3)*u1+(1/15)*u2)
print(m1-((-1/3)*u1+(1/15)*u2))