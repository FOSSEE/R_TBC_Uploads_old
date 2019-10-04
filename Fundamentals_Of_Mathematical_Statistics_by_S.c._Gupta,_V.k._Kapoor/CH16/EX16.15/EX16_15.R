#Page number--16.22
#Example number--16.15

# Part (i)
# Food A
X=c(49,53,51,52,47,50,52,53)
A=50
d=X-A
a=sum(d^2)
data.frame(X,d,d^2)

# Food B
Y=c(52,55,52,53,50,54,54,53)
B=52
D=Y-B
b=sum(D^2)
data.frame(Y,D,D^2)

mx=A + sum(d)/8;mx 			 # Mean
p=a-(sum(d))^2/8;p

my=B + sum(D)/8;my		   	 # Mean
q=b-(sum(D))^2/8;q

S2=(1/(8+8-2))*(p+q)
S2

t=(mx-my)/sqrt(S2*(1/8+1/8))
t

sprintf("Null hypothesis rejected")
sprintf("Food B is superior to Food A")

# Part (ii)
X
Y
d=X-Y
data.frame(X,Y,d,d^2)

n=length(X)
md=sum(d)/n
md
S2=1/(n-1)*(sum(d^2)-(sum(d))^2/n)
S2

t= abs(md/sqrt(S2/n))
round(t,3)

sprintf("Food B is superior to Food A")














