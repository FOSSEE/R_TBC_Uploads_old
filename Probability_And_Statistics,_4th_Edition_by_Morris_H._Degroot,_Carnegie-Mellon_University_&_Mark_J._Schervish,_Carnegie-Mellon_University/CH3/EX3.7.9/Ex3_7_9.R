# Chapter 3 - Random Variables and Distributions, Section - 3.7 (Multivariate Distributions), Page No. - 157

f<-function(x) {(2/((2+x)^2))}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 
# Finding probability for "x>3" -

print((integrate(f,3,Inf))$value)