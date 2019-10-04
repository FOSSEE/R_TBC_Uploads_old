#Chapter 5- Eigenvalues and Eigenvectors
#Page No.183 / 5-27
#Prob 1
#5.7.1

#clear console
cat("\014")

av<-c(-3,-1,-6,1,1,1)
a=matrix(av,2,3,TRUE)
p=a
print(a)
a[c(1,2),]<-a[c(2,1),]
print(a)
a[2,]=a[2,]+3*a[1,]
a[2,]=a[2,]/2
a[1,]=a[1,]-a[2,]
print(a)
print('c1=')
print(a[1,3])
print('c2=')
print(a[2,3])
print('x(t)=')
cat('[',a[1,3]*p[,1],']*e^4t')
cat('-[',a[2,3]*p[,2],']*e^2t')