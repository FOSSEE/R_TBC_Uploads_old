# Chapter 3 - Random Variables and Distributions, Section - 3.6 (Conditional Distributions), Page No. - 144

Y<-c(4)
X<-c(9)

# Marginal p.d.f. of 'Y' be represented by 'f'.

f<-function(x)
{
  exp(Y-x)
}

# Let the conditional probability that "X>=9" for "Y=4" be represented by 'Pr'.
# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 

Pr<-integrate(f,9,Inf)$value
print(Pr)

# The answer may slightly vary due to rounding off values.