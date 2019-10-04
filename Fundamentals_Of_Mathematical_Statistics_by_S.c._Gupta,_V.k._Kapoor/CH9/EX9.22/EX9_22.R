#Page number--9.31
#Example number--9.22
#Load Package-->cubature

library(cubature)

#P(X>=20)

fx=1/30   		  # 0<x<30
# define the integrated function
f <- function(x){fx}
a=adaptIntegrate(f, lowerLimit =20, upperLimit =30)
a
sprintf("Probability that he has to wait at least 20 min: %f",a$integral)

