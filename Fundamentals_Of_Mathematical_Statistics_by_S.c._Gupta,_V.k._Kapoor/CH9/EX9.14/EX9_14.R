#Page number--9.24
#Example number--9.14

#P(X<30)=0.10
#P(X>80)=0.05
#When X=30, Z=(30-u)/s.d=-z1
#When X=80, Z=(80-u)/s.d=z2

#P(0<Z<z2)=0.5-0.05
z2=0.45		    	 #From Normal Table

#P(0<Z<z1)=0.50-0.10
z1=0.40     		 #From Normal Table


#Solving two variables equation
a=matrix(c(1,1,-1.28,1.64),nrow=2,ncol=2)
b=matrix(c(30,80),nrow=2,ncol=1)
c=solve(a,b)
c
sprintf("The mean: %f ",c[1,1])
sprintf("The standard deviation: %f ",c[2,1])

#P(45<X<60)
a=pnorm(60,c[1,1],c[2,1])-pnorm(45,c[1,1],c[2,1])
a
sprintf("%d percent candidates got second division in examination",round(a*100))
