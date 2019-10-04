# Chapter 3 - Random Variables and Distributions, Section - 3.6 (Conditional Distributions), Page No. - 148

# Result of the integration of denominator for "n=2" and "x=1".
# Let 'g' represents the denominator of the conditional probability distribution function of 'P' given 'X' as mentioned in the textbook.

g<-function(q,n=2,x=1)
{
  q^x*(1-q)^(n-x)
}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 

print((integrate(g,0,1))$value)

# The answer may slightly vary due to being represented as a real number rather than a fraction.