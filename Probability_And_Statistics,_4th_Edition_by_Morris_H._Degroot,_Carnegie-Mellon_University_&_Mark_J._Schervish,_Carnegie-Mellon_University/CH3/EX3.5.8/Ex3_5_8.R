# Chapter 3 - Random Variables and Distributions, Section - 3.5 (Marginal Distributions), Page No. - 137

# Joint probability of getting relapse for different treatments is represented by 'x1'.
# Joint probability of not getting relapse for different treatments is represented by 'x2'.
# In order to define a vector, "vector" function is used.
# For description of this function, type ?vector in the console.

x1<-c(0.120,0.087,0.146,0.160);
x2<-c(0.147,0.166,0.107,0.067);
x<-c(x1,x2);

# Joint probabilities of both events X and Y be represented by a matrix 'f'.
# For converting vectors into a matrix by adjusting each vector in each row, "matrix" function in used with "byrow" argument set to TRUE.
# Final values are saved in the matrix 'f'.
# For description of this function, type ?matrix in the console.

f<-matrix(x,nrow=2,ncol=4,byrow=TRUE);

# Let the marginal probability function of 'X' be represented by 'f1'.
# A variable 'outcome' is declared in the function for computation operation.

f1<-function(x)
{
  outcome=0;
  for(i in 1:ncol(f))
  {
    outcome=outcome+f[x,i];
  }
  return(outcome)
}

# Let the marginal probability function of 'Y' be represented by 'f2'.
# A variable 'outcome' is declared in the function for computation operation.

f2<-function(y)
{
  outcome=0;
  for(j in 1:nrow(f))
  {
    outcome=outcome+f[j,y];
  }
  return(outcome)
}

# Marginal probabilities of 'X'.

for(k in 1:nrow(f))
{
  print(f1(k))
}

# Marginal probabilities of 'Y'.

for(l in 1:ncol(f))
{
  print(f2(l))
}