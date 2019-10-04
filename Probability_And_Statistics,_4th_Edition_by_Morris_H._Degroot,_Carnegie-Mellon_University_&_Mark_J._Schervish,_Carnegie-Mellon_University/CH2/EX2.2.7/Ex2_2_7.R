# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 70

# The example illustrates an infinite sum of a Geometric Progression.
# Let the first term be represented by 'a' and the common ratio by 'r'.

a<-c(1/2)
r<-c(1/2)

# Infinite summation is given by a function named 'Final'.

Final<-function(a,r)
{
  return(a/(1-r))
}
print(Final(a,r))

# The answer may slightly vary due to being represented as a real number rather than a fraction.


