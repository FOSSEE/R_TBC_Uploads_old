#Page number-11.9
#Example number--11.1

X=c(65,66,67,67,68,69,70,72)
Y=c(67,68,65,68,72,72,69,71)
#Equation of line regressiono of Y on X
b=lm(Y~X)
a=summary(b)$coefficients[1,1]
a			 # Intercept
c=summary(b)$coefficients[2,1]
c			 # Slope
#From the above, we can get the equation of Y on X
#Equation--->Y=c*X+a------>Y=0.66*X+23.66

#Equation of line regressiono of X on Y
e=lm(X~Y)
f=summary(e)$coefficients[1,1]
f			 # Intercept
g=summary(e)$coefficients[2,1]
g			 # Slope
#From the above, we can get the equation of X on Y
#Equation--->X=g*Y+f------>X=0.545*Y+30.36

#Calculating the value
x=0.545*70+30.36
x		# Answer little vary due to rounding off