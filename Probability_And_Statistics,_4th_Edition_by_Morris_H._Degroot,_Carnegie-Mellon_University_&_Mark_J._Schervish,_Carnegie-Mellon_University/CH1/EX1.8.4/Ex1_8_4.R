# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 34

# Number of pairs are represented by 'n', number of Genotypes by 'G'.
# A function 'C' is defined in order to calculate combination of 'n' items taken 'k' at a time.
# Variables 'N' and 'D' are declared in the function definition of 'C' for calculation operations.
# 'A' is the combination of 'n' pairs taken 2 at a time.

n<-c(3);
G<-c(0);
C<-function(n,k)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:k)
  {
    N=N*(n-i+1);
    D=D*(i);
  }
  output<-N/D
  return(output)
}
A<-C(n,2)
G=n+A;
print(G)