#Page number--9.22
#Example number--9.12

#P(X<25)=0.1003
p1=0.1003
#P(X<70)=0.8997
p2=0.8997
#When X=25, Z=(25-u)/s.d=-z1
#When X=70, Z=(70-u)/s.d=z2

#P(0<Z<z2)=0.3997
z2=1.28     	 #From Normal Table

#P(0<Z<z1)=0.5-0.1003=0.3997
z1=1.28       		 #From Normal Table

#Solving two variables equation
a=matrix(c(1,1,-1.28,1.28),nrow=2,ncol=2)
b=matrix(c(25,70),nrow=2,ncol=1)
c=solve(a,b)
c
sprintf("The mean: %f Kg",c[1,1])
sprintf("The standard deviation: %f Kg",c[2,1])

