# Chapter 1 - Introduction to Probability, Section - 1.9 (Multinomial Coefficients), Page No. - 44

# For calculation purpose 'k' is defined as a vector containing 'n1', 'n2', 'n3' and so on, rather than a count of the numbers being used.
# Number of dice be represented by 'n'.

n<-c(12);
n1<-c(2);
n2<-c(2);
n3<-c(2);
n4<-c(2);
n5<-c(2);
n6<-c(2);
k<-c(n1,n2,n3,n4,n5,n6);

# Sample space is represented by 'S'.

S<-c(1);
for(l in 1:n)
{
  S=S*6;
}

# A function 'Fact' is defined. It finds the factorial of input value.
# A variable 'result' is declared in the function for computation operation.

Fact<-function(n)
{
  result<-c(1);
  for(i in 1:n)
  {
    result<-result*i;
  }
  return(result)
}

# In order to apply Multinomial Theorem a function named 'Multi' is defined as follows.
# Variables 'output' and 'final' are declared in the function for computation operation.


Multi<-function(n,k)
{
  output<-c(1);
  for(j in 1:length(k))
  {
    output<-output*Fact(k[j])
  }
  final=Fact(n)/output;
  return(final)
}

# Required result after the application of Multinomial Theorem is represented by 'R'.

R=Multi(n,k);
print(R)

# Required probability is represented by 'p'.

p=R/S;
print(p)

# The answer may slightly vary due to rounding off values.