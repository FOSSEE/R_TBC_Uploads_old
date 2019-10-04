#Organic pollution(Pg no. 83)

n = 18 #number of samples
p = 0.1

# P(X=2)
A = dbinom(2,n,p)
A

# P(X>=4) == 1 - P(X<4)
B = 1 - pbinom(3,n,p)
B

# P(3<=X && X<7)
C = dbinom(3,n,p) + dbinom(4,n,p) + dbinom(5,n,p) + dbinom(6,n,p)
C