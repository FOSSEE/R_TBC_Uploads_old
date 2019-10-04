# Chapter 3 - Random Variables and Distributions, Section - 3.7 (Multivariate Distributions), Page No. - 162

# Let the conditional probability distribution function of "Z<=1" given "X1=1" and "X2=4" be represented by 'g'.

g<-function(z)
{
  171.5*(z^2)*exp(-7*z)
}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 

print((integrate(g,0,1))$value)

# The answer may slightly vary due to rounding off values.