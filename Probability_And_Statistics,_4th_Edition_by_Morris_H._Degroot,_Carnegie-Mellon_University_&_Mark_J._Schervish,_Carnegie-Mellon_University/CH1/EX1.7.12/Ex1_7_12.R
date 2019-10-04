# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 31

# Stirling's Formula can be used by defining a function named 'Stirling' in the following manner.
# In the function definition, 'n' represents a numeric value.

Stirling<-function (n)
  {
    output<-((2*pi*n)^.5)*(n/exp(1))^n
    return(output)
  }
  
# Another function 'P' is defined in order to find permutations using Stirling's Formula in the following manner.
# In the function definition, 'n' represents total number of available items and 'k' represents the number of items to be selected at a time.
P<-function(n,k)
  {
    output<-(Stirling(n)/Stirling(k))
    return(output)
  }
P(70,50)

# The answer may slightly vary due to rounding off values.