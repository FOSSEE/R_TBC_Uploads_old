# Chapter 3 - Random Variables and Distributions, Section - 3.3 (The Cumulative Distribution Function), Page No. - 110

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

# Let the probability of event 'A' be represented as 'Pr_A'.

Pr_A=F(4)-F(2);
print(Pr_A)

# The answer provided in the textbook is wrong. F(2)=2/3, hence correct answer is 2/15 or 1.3333.