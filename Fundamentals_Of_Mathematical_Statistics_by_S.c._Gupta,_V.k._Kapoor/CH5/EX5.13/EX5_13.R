#Page number--5.18
#Example number--5.13

#Mean
integrand=function(x){x*(3+2*x)/18}
a1=integrate(integrand,lower=2,upper=4)
a1
u1d=83/27

integrand=function(x){x^2*(3+2*x)/18)}
a2=integrate(integrand,lower=2,upper=4)
a1
u2d=88/9

#Varience
v=u2d-u1d^2

#Standard Deviation
s.d=sqrt(v)

#Mean Deviation
integrand=function(x){(83/27-x)*(3+2*x)/18}
f1=integrate(integrand,lower=2,upper=83/27)
f1
integrand=function(x){(x-83/27)*(3+2*x)/18}
f2=integrate(integrand,lower=83/27,upper=4)
f2
#Mean deviation=f1+f2
M.D=0.247264+0.247264




