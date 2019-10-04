#Chapter 6- Orthogonality and Least Squares
#Applications of Inner Product Spaces
#Page No.217 / 6-25
#Prob 9
#6.8.9

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

integrand <-function(t) {(2*180)-t}
print('The fourier coefficients of f are:')
v1=integrate(integrand,lower=0,upper=360)
v1v=(1/2)*(1/180)*v1$value
print('a0/2=')
print(v1v)
print('for k=1')
integrand1 <-function(t) {((2*180)-t)*cos(t)}
v2=integrate(integrand1,lower=0,upper=360)
v2v=(1/180)*v2$value
print('ak=')
print(round(v2v))
integrand2 <-function(t) {((2*180)-t)*sin(t)}
v3=integrate(integrand2,lower=0,upper=360)
v3v=(1/180)*v3$value
print('bk=')
print(round(v3v))
print('The third-order Fourier approximation to f is:')
print('180 + 2sint + sin2t + (2/3)sint3t')