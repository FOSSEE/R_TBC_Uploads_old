#Page number--16.38
#Example number--16.27

n1=10
n2=12
mx=15
my=14
dx=90
dy=108

# F-Test
SX2=dx/(n1-1);SX2
SY2=dy/(n2-1);SY2

F=SX2/SY2
F

if(F<2.90) print("H0 of equality of populatin may be accepted")

# T-Test
S2=1/(n1+n2-2)*(dx+dy)
S2
t=(mx-my)/sqrt(S2*(1/n1+1/n2))
t

sprintf("Samples have been drawn from the same normal population")