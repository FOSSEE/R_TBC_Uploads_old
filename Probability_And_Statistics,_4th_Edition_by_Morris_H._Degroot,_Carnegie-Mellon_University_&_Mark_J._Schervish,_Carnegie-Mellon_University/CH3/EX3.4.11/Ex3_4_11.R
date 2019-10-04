# Chapter 3 - Random Variables and Distributions, Section - 3.4 (Bivariate Distributions), Page No. - 124

x<-c(1,2,3)
f<-function(x,y)
{
  ((x*(y^(x-1)))/3)
}

# "integrate" function is used for the purpose of integrating one dimensional functions. It returns a 'list" with desired values. For description, type ?integrate in the console.
# "$" sign is used to access particular values in a data structure.
# Here, 'value' variable in the list returned by "integrate" function consists of the integral result of an integration. 
# Let the final result after integration and summation be stored in 'Result'.

# (I)

Result<-c(0)
for(i in 1:length(x))
{
  F<-function(y)
  {
    f(i,y)
  }
  Result=Result+integrate(F,0,1)$value
}
print(Result)

# (II)

Result<-c(0)
for(j in 2:length(x))
{
  F<-function(y)
  {
    f(j,y)
  }
  Result=Result+integrate(F,1/2,1)$value
}
print(Result)

# The answer may slightly vary due to rounding off values.