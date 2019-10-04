# Chapter 3 - Random Variables and Distributions, Section - 3.7 (Multivariate Distributions), Page No. - 156

# Let 'f' be the function representing the final expression in the example.

f<-function(p) {p*(1-p)}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 
# Finding probability for "0<p<1" -

print((integrate(f,0,1))$value)

# For the case of two vectors "(x1,x2)" the final result is as follows -

print(2*((integrate(f,0,1))$value))

# The answer may slightly vary due to being represented as a real number rather than a fraction.