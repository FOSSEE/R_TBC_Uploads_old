#Page number--5.8
#Example number--5.4
#LOAD PACKAGE---->prob

s=tosscoin(3)
s
#For number of heads
X=c(3,2,2,1,2,1,1,0)
#For number of head runs
Y=c(1,1,0,0,1,0,0,0)
#For length of head runs
Z=c(3,2,0,0,2,0,0,0)
U=X+Y
V=X*Y
data.frame(X,Y,Z,U,V)

#Part (i)
#Probability distribution of X
P3=1/8;P2=3/8;P1=3/8;P0=1/8
x=seq(0,3,1)
px=c(P3,P2,P1,P0)
plot(x,px,type="h",xlim=c(0,3),ylim=c(0,0.4),ylab="Prob.",xlab="Number of heads")
points(0:3,px,pch=16,cex=2)

#Part (ii)
#Probability distribution of Y
P1=3/8;P0=5/8
y=seq(0,1,1)
py=c(P1,P0)
plot(y,py,type="h",xlim=c(0,1),ylim=c(0,0.7),ylab="Prob.",xlab="Number of heads runs")
points(0:1,py,pch=16,cex=2)

#Part (iii)
#Probability distribution of Z
P3=1/8;P2=2/8;P1=0;P0=5/8
z=seq(0,3,1)
pz=c(P0,P1,P2,P3)
plot(z,pz,type="h",xlim=c(0,3),ylim=c(0,0.7),ylab="Prob.")
points(0:3,pz,pch=16,cex=2)

#Part (iv)
#Probability distribution of U
P4=1/8;P3=2/8;P2=1/8;P1=3/8;P0=1/8
u=seq(0,4,1)
pu=c(P2,P1,P0,P3,P4)
plot(u,pu,type="h",xlim=c(0,4),ylim=c(0,0.4),ylab="Prob.")
points(0:4,pu,pch=16,cex=2)

#Part (v)
#Probability distribution of V
P3=1/8;P2=2/8;P1=0;P0=5/8
v=seq(0,3,1)
pv=c(P0,P1,P2,P3)
plot(v,pv,type="h",xlim=c(0,3),ylim=c(0,0.7),ylab="Prob.")
points(0:3,pv,pch=16,cex=2)



