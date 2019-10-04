# Chapter 1 - Introduction to Probability, Section - 1.9 (Multinomial Coefficients), Page No. - 42

# Total members present and the members required in the 3 committees be represented by 'Total', 'A', 'B' and 'C' respectively.

A<-c(8);
B<-c(8);
C<-c(4);
Total=A+B+C;

# In order to find the possible combinations of selecting members into each committee.
# A function 'C' is defined in which variables 'output','N' and 'D' are declared for computation operations.

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

# Numbers of possible combinations for choosing members for 'A' and 'B' are represented by 'C_A' and 'C_B' respectively.

C_A=C(Total,A);
C_B=C((Total-A),B);

# Number of total possible combinations is represented by 'R'.

R=C_A*C_B;
print(R)