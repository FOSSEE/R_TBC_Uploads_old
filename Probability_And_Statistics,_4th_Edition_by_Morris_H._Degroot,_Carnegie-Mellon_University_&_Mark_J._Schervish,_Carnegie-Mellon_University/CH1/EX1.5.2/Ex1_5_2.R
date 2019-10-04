# Chapter 1 - Introduction to Probability, Section - 1.5 (The Definition of Probability), Page No. - 17

# 'p' is declared as a vector of length 6. For description of a "vector", type ?vector in the console.
# A "length" function returns the length of the input vector.

p<-(vector(length=6))
for(i in 1:length(p))
{
  if(i!=6)
  {p[i]=1/7;}
  else
  {p[i]=2/7;}
}
A<-c(1,3,5)

# A function with the name 'Pr' is defined to calculate the sum of probabilities at indices mentioned in 'A'.
# A variable named 'output' is declared inside the function 'Pr' which stores the desired sum.

Pr<-function(A)
{
  output<-c(0);
  for(j in 1:length(A))
  {
    output=output+p[A[j]]
  }
  return(output)
}
print(Pr(A))

# The answer may slightly vary due to being represented as a real number rather than a fraction.