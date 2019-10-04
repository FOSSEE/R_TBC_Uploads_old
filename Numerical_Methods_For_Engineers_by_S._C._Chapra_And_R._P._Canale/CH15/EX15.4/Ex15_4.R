Mt=2000
#kg
g=9.8
#m/s^2
c0=200
#$
c1=56
#$/m
c2=0.1
#$/m^2
vc=20
#m/s
kc=3
#kg/(s*m^2)
z0=500
#m
t=27
r=2.943652
n=6
pi = 3.1415927
A=2*pi*r*r
l=(2^0.5)*r
c=3*A
m=Mt/n

f <- function(t) {
  (z0+g*m*m/(c*c)*(1-exp(-c*t/m)))*c/(g*m)
}

while (abs(f(t)-t)>0.00001){
  t=t+0.00001
}
v=g*m*(1-exp(-c*t/m))/c
cat("The final value of velocity=",v,"\n")
cat("The final no. of load parcels=",n,"\n")
cat("The chute radius=",r,"m","\n")
cat("The minimum cost($)=",(c0+c1*l+c2*A*A)*n)