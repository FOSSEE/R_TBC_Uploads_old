#PAGE NUMBER--2.49
#Example number--2.36

x=seq(0,8,1)
f=c(1,8,28,56,70,56,28,8,1)
d=x-4
fd=f*d
fd2=fd*d
fd3=fd2*d
fd4=fd3*d
data.frame(x,f,d,fd,fd2,fd3,fd4)

# Moments about point x=4
U1=sum(fd)/sum(f); U1
U2=sum(fd2)/sum(f); U2
U3=sum(fd3)/sum(f); U3
U4=sum(fd4)/sum(f); U4

# Moments about mean
u1=0
u2= U2-U1^2; u2
u3= U3-3*U2*U1+2*U1^3; u3
u4= U4-4*U3*U1+6*U2*U1^2 -3*U1^4; u4

b1=u3^2/u2^3
b1
b2=u4/u2^2
b2

