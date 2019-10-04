# Chapter 3 - Random Variables and Distributions, Section - 3.8 (Functions of a Random Variable), Page No. - 168

# Let all possible values of X and Y be stored in variables 'X' and 'Y'.
# "vector" function is used in order to create a vector.
# For more description, type ?vector in the console.

X<-c(1,2,3,4,5,6,7,8,9);
y<-vector(mode='numeric',length=length(X))

# In order to find the absolute value, "abs" function is used.
# For more description, type ?abs in the console.

for(i in 1:length(y))
{
  y[i]=abs(X[i]-5)
}

# Let the required probability of occuring of certain value of Y be given by the function named 'g'.
# All probabilities for "Y=0" to "Y=4" are saved in a variable named 'Pr'.
# For the purpose of performing computation operations, 'count' variable is defined in the function 'g'.

Pr<-vector(mode='numeric',length=5)
g<-function(Y)
  {
    count=0;
    for(k in 1:length(y))
      {
        if(Y==y[k])
        {
          count=count+1;
        }
      }
    return(count/length(y))
  }
for(j in 1:5)
{
  Pr[j]=g(j-1)
}

# Printing 'g(0)'.

print(Pr[1])

# Printing 'g(1)' to 'g(4)'.

for(k in 2:5)
{
  print(Pr[k])
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.