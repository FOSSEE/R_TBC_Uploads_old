#Chapter 6- Orthogonality and Least Squares
#Applications of Inner Product Spaces
#Page No.216 / 6-24
#Prob 7
#6.8.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

integrand <-function(kt) {cos(kt)*cos(kt)}
print('||coskt||^2=')
v1=integrate(integrand,lower=0,upper=360)
print(round(v1$value))

integrand <-function(kt) {sin(kt)*sin(kt)}
print('||sinkt||^2=')
v1=integrate(integrand,lower=0,upper=360)
print(round(v1$value))