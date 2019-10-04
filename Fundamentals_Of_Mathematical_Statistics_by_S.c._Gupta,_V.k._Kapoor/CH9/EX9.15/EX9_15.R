#Page number--9.25
#Example number--9.15

n=100 		 # Total items
p=0.4
q=0.6
u=n*p 		 # Mean
s.d=sqrt(n*p*q)	 # Standard Deviation

#Normal Distribution
#Part (i)
#P(43.5<X<100.5)
a=pnorm(100.5,u,s.d)-pnorm(43.5,u,s.d)
a

#Part (ii)
#P(X=44)---->P(43.5<X<44.5)
b=pnorm(44.5,u,s.d)-pnorm(43.5,u,s.d)
b

#Binomial Distribution
#P(X>=44)
sum(dbinom(44:100,100,0.4))
#P(X=44)
dbinom(44,100,0.4)

sprintf("We can see that both Normal and Binomial Distribution are close to each other")

