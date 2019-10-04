# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 72

# Number of items in sample and number of defectives be represented by 'S' and 'De'.

S<-c(6);
De<-c(2);

# A function 'C' is defined in order to calculate combination of 'n' items taken 'k' at a time.
# Variables 'N' and 'D' are declared in the function definition of 'C' for calculation operations.

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

# Conditional probability of 'A' given that 'B1' and 'B2' have already occured seperately be represented by 'Pr_A_B1' and 'Pr_A_B2'.
# In case of event 'B1', 'p' is '0.01' and in case of event 'B2', 'p' is '0.4'.

p=0.01;
Pr_A_B1=(C(S,De))*((p)^De)*((1-p)^(S-De))
print(Pr_A_B1)
p=0.4;
Pr_A_B2=(C(S,De))*((p)^De)*((1-p)^(S-De))
print(Pr_A_B2)

# The answer may slightly vary due to rounding off values.