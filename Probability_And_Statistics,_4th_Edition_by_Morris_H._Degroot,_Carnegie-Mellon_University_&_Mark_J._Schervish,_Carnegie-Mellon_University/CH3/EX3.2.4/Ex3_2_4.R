# Chapter 3 - Random Variables and Distributions, Section - 3.2 (Continuous Distributions), Page No. - 105

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# Let a linear function 'x' be defined such that it returns 1/8th of its input.

x<-function(x) (x/8)

# Let the probability for range between "1 and 2" be represented by 'Pr_I' and for range above "2" by 'Pr_II'.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 

Pr_I=integrate(x,1,2)$value;
Pr_II=integrate(x,2,4)$value;
print(Pr_I)
print(Pr_II)

# The answer may slightly vary due to being represented as a real number rather than a fraction.