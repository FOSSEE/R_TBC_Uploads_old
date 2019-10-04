
# Chapter 11
# Example 11.9 page no. 426 from the pdf..
# Transformation To Linear Regression Model..

# given data on P and V find the constants of the equation PV^gamma = C

v <- c(50,60,70,90,100) #volume

p <- c(64.7,51.3,40.5,25.9,7.8) # pressure

# the model  
l <- lm(log(p)~log(v))

# coefficients of the model..
co <- coefficients(l)

# we modelled the data as lnP = lnC - gamma*lnV + additive error.

cat("The value of C is",exp(co[1]),"and the vlaue of gamma is",-co[2])


