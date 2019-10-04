# Chapter 3 - Random Variables and Distributions, Section - 3.2 (Continuous Distributions), Page No. - 104

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# Let a linear function 'x' be defined such that it returns its input.

x<-function(x) x

# Let the integration of 'x' from limits "0 to 4" be stored in a list named 'Integrate'.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 

Integrate=integrate(x,0,4);
c=1/(Integrate$value);
print(c)

# The answer may slightly vary due to being represented as a real number rather than a fraction.