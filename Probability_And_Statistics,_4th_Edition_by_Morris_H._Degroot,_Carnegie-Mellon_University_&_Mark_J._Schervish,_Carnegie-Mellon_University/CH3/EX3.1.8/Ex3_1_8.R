# Chapter 3 - Random Variables and Distributions, Section - 3.1 (Random Variables and Discrete Distributions), Page No. - 97

# Let the number of possible values be represented by 'V'.

V<-c(1000);
X<-function(s)
{
  return(((100*s[1]))+(10*s[2])+(s[3]))
}
s<-c(0,1,5)

# Let the probability of winning the lottery game for the given sample space 's' be represented by the function 'Pr'.

Pr<-function(X)
{
  return(X/V);
}

# Probabilty of winning for the sample space (0,1,5).

print(Pr(length(X(s))))

# The answer may slightly vary due to rounding off values.