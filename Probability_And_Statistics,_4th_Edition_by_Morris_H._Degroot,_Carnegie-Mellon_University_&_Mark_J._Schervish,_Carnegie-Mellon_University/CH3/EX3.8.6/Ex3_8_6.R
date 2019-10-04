# Chapter 3 - Random Variables and Distributions, Section - 3.8 (Functions of a Random Variable), Page No. - 171

y<-function(x)
{
  2*(1-((1-x)^0.5))
}

# Let the three generated values be stored in the variable 'x'.

x<-c(0.4125,0.0894,0.8302)
for(i in 1:length(x))
{
  print(y(x[i]))
}

# The answer may slightly vary due to rounding off values.