#Chapter 5- Eigenvalues and Eigenvectors
#Page No.184 / 5-28
#Prob 19
#5.7.19

#clear console
cat("\014")

a=matrix(c(-2,(3/4),1,-1),2,2,TRUE)
print(a)
eig=eigen(a)
print('eigen values are')
print(eig$values)
v1=matrix(c(1,2),2,1,TRUE)
v2=matrix(c(-3,2),2,1,TRUE)
print('v1=')
print(v1)
print('v2=')
print(v2)
print('general solution x(t) =')
cat('c1*[',v1,']e^-.5t+c2*[',v2,']e^-2.5t')
print('')
ma1=cbind(v1,v2)
print(ma1)
mb=matrix(c(4,4),2,1,TRUE)
mc=solve(ma1) %*% mb
print(mc)
print('c1=')
print(mc[1])
print('c2=')
print(mc[2])
x1=mc[1]*v1
x2=mc[2]*v2
print('x(t)=')
cat('[',x1,']*e^-.5t')
cat('-[',x2,']*e^-2.5t')