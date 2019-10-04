# Chapter 3 - Random Variables and Distributions, Section - 3.4 (Bivariate Distributions), Page No. - 125

x<-c(0,1)
f<-function(x,p)
{
  ((p^x)*((1-p)^(1-x)))
}
# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 
# Let the final result after integration and summation be stored in 'Result'.
# For (x=0)

F<-function(y)
{
  f(x[1],y)
}
  print((integrate(F,0,1/2))$value)
  
# For (x=1)
  
F<-function(y)
{
  f(x[2],y)
}
print((integrate(F,0,1))$value)

# The answer may slightly vary due to being represented as a real number rather than a fraction.