# Chapter 1 - Introduction to Probability, Section - 1.9 (Multinomial Coefficients), Page No. - 43

# For calculation purpose 'k' is defined as a vector containing 'n1', 'n2' and 'n3' rather than a count of the numbers being used.

n<-c(20);
n1<-c(8);
n2<-c(8);
n3<-c(4);
k<-c(n1,n2,n3);

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