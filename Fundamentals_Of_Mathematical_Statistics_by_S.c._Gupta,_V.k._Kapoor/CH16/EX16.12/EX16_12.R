#Page number--16.20
#Example number--16.12

# SAILORS
X=c(63,65,68,69,71,72)
A=68
d=X-A
a=sum(d^2)
data.frame(X,d,d^2)

# SOLDIERS
Y=c(61,62,65,66,69,69,70,71,72,73)
B=66
D=Y-B
b=sum(D^2)
data.frame(Y,D,D^2)

mx=A + sum(d)/6;mx 			 # Mean
p=a-(sum(d))^2/6;p

my=B + sum(D)/10;my		   	 # Mean
q=b-(sum(D))^2/10;q

S2=(1/(6+10-2))*(p+q)
S2

t=(mx-my)/sqrt(S2*(1/6+1/10))
t

sprintf("Null hypothesis can be retained")
sprintf("The sailors are on the average taller than the soilders.")












