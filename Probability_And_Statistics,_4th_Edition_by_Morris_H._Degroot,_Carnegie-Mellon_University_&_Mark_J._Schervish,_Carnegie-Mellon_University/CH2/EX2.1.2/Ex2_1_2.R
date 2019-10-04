# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 56

# Total numbers and count of numbers to be drawn be represented by 'Total' and 'N'.

Total<-c(30);
N<-c(6);

# In order to find the possible combinations of drawing certain numbers out of a total of 30 numbers.
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

# Sample space be represented by 'S'.

S=C(Total,N)

# Total numbers, count of numbers to be drawn and possible combinations in case of event 'B' be represented by 'Total_B', 'N_B' and 'B'.

Total_B<-c(29);
N_B<-c(5);
B=C(Total_B,N_B)

# Possible combinations in the case of event 'A' be represented by 'A'.

A<-c(1);

# Probability of event 'B', 'A' and conditional probability of event 'A' given 'B' be represented by 'Pr_B', 'Pr_A' and 'Pr_A_B'.

Pr_B=B/S;
print(Pr_B)
Pr_A=A/S;
print(Pr_A);
Pr_A_B=Pr_A/Pr_B;
print(Pr_A_B)

# The answer may slightly vary due to rounding off values.