# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 37

# Total number of cards, number of aces and cards occupied by each player be represented by 'Cards', 'Aces' and 'O' respectively.

Cards<-c(52);
Aces<-c(4);
O<-c(13);

# A function 'C' is defined to determine the number of possible combinations as per given input where variables 'output','N' and 'D' are declared for computation operations.

C<-function(n,k)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:k)
  {
    N=N*(n-i+1);
    D=D*(i);
  }
  output<-N/D;
  return(output)
}

# Possible combinations of 4 aces be represented by 'A_C'.

A_C=C(52,4);

# Following loop will determine the number of possible combinations leading to the desired result.
# Result will be represented by 'R'.

R<-c(1);
for(j in 1:Aces)
{
  R=R*O;
}

# Required probability be represented by 'p'.

p=R/A_C;
print(p)

# The answer may slightly vary due to rounding off values.