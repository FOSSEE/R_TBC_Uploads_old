# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 38

# Let the total numbers be represented by 'n' and numbers drawn by 'k'.

n<-c(30);
k<-c(6);

# Following function 'P' will find the number of permutations of 'n' numbers taken 'k' at a time.
# Variable 'output' is declared for computational operations.

P<-function(n,k)
{
  output<-c(1);
  for(i in 1:k)
  {
    output=output*(n-i+1)
  }
  return(output)
}

# The sample space by permutation is represented by 'S'.

S=P(n,k);
print(S)

# A function 'C' is defined to determine the number of possible combinations as per given input where variables 'final','N' and 'D' are declared for computation operations.

C<-function(n,k)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:k)
  {
    N=N*(n-i+1);
    D=D*(i);
  }
  final<-N/D;
  return(final)
}

# The sample space by combination is represented by 'S_'.

S_=C(n,k);
print(S_)

# Required event is represented by 'A'.

A<-c(1,14,15,20,23,27);

# In order to find the possible outcomes of getting the required event 'A' in sample space 'S'.
# A function 'Fact' is defined. It finds the factorial of input value.
# A variable 'result' is declared in the function for computation operation.

Fact<-function(n)
{
  result<-c(1);
  for(i in 1:n)
  {
    result<-result*i;
  }
  return(result)
}

# Number of possible outcomes of getting the required event 'A' is represented by 'A_P'.

A_P=Fact(k);
print(A_P)

# Required probability is represented by 'Pr_A'.

Pr_A=A_P/S;
print(Pr_A)

# The answer may vary as exact numeric values are not calculated in the textbook.