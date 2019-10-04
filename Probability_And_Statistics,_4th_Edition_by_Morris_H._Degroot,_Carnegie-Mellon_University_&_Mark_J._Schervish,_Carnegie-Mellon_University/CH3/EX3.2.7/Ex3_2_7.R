# Chapter 3 - Random Variables and Distributions, Section - 3.2 (Continuous Distributions), Page No. - 106

# Let 'Pr' be the function which determines probability. Let upper limit of voltage record be represented by 'value'.

value<-c(3);
Pr<-function(x,value)
{
  if(x>0)
  {
    if(x<value)
    {
      return(1-(1/(1+value)))
    }
    else
    {
      return(1/(1+value))
    }

  }
  else
    {
      return(0)
    }
}

# Probability distribution for values of 'x' can be determined by simply using 'Pr' function as follows -

# For x=2

Pr(2,value)

# For x=3

Pr(3,value)

# The answer may slightly vary due to being represented as a real number rather than a fraction.