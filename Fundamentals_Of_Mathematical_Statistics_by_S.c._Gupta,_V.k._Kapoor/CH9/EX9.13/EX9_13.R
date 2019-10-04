#Page number--9.23
#Example number--9.13

#P(X<75)=0.58
#P(X>80)=0.04
#When X=75, Z=(75-u)/s.d=z1
#When X=80, Z=(80-u)/s.d=z2

#P(0<Z<z2)=1.75
z2=1.75		    	 #From Normal Table

#P(0<Z<z1)=0.20
z1=0.20     		 #From Normal Table

#Solving two variables equation
a=matrix(c(1,1,z1,z2),nrow=2,ncol=2)
b=matrix(c(75,80),nrow=2,ncol=1)
c=solve(a,b)
c
sprintf("The mean: %f ",c[1,1])
sprintf("The standard deviation: %f ",c[2,1])
