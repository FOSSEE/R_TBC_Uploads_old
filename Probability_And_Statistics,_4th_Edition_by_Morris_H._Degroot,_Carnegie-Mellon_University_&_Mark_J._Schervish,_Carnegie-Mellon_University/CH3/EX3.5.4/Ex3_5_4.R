# Chapter 3 - Random Variables and Distributions, Section - 3.5 (Marginal Distributions), Page No. - 134

x<-c(1,2,3)
f<-function(x,y)
{
  ((x*(y^(x-1)))/3)
}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 
# Let the final result after integration and summation be stored in 'Result'.

# Marginal p.f. for each value of 'x' is given by the following -

Result<-c(0)
for(i in 1:length(x))
{
  F<-function(y)
  {
    f(i,y)
  }
  print(paste0("Marginal p.f. for x = ",i," is ",integrate(F,0,1)$value))
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.