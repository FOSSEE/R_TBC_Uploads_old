#Chapter 6- Orthogonality and Least Squares
#Page No.214 / 6-22
#Prob 25
#6.7.25

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

integrand <-function(t) {1*t}
print('<t,1>=')
v1=integrate(integrand,lower=-1,upper=1)
print(v1)
integrand1 <-function(t) {1*(t*t)}
print('<t^2,1>=')
v2=integrate(integrand1,lower=-1,upper=1)
print(v2)
integrand2 <-function(x) {1*1}
print('<1,1>=')
v3=integrate(Vectorize(integrand2),lower=-1,upper=1)
print(v3)
integrand3 <-function(t) {(t*t)*t}
print('<t^2,t>=')
v4=integrate(integrand3,lower=-1,upper=1)
print(v4)
integrand4 <-function(t) {(t*t)}
v5=integrate(integrand4,lower=-1,upper=1)
print('Thus projwt^2=')
projt=(((v2$value/v3$value)*1)+((v4$value/v5$value)))
print(projt)
print('A polynomial orthogonal to W is t^2-projt^2=')
print('t^2-(1/3)')
print('thus the polynomials 1,t^2and 3t^2-1 form an orthogonal basis for Span(1,t,t^2)')