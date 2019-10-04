# Chapter 3 - Random Variables and Distributions, Section - 3.7 (Multivariate Distributions), Page No. - 155

# Let 'f' be the function representing the final expression in the example.

f<-function(y) {2*exp(-2*y)}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 
# Finding probability for "y>0" -

print((integrate(f,0,Inf))$value)