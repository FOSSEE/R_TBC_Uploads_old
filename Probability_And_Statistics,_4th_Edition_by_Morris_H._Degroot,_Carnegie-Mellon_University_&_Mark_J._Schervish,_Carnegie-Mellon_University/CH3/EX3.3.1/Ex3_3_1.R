# Chapter 3 - Random Variables and Distributions, Section - 3.3 (The Cumulative Distribution Function), Page No. - 107

F<-function(X)
{
  if(X<=0)
  {
    return(0)
  }
  else if(X>0)
  {
    return(1-(1/(1+X)))
  }
}

print(F(3))

# The answer may slightly vary due to being represented as a real number rather than a fraction.