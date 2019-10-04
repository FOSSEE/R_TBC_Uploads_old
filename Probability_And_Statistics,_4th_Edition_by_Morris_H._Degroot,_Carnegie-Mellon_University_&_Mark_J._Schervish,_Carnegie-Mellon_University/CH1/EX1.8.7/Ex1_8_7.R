# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 36

# Sample space be represented by 'S', possible outcomes be represented by 'O' and number of times the coin is tossed by 'Toss'.

O<-c(2);
Toss<-c(10);
S=O^Toss;

# (A) Probability for obtaining exactly 3 Heads be 'p'.

# Number of required heads be represented by 'Heads'. Number of desired outcomes be given by function 'C'.
# Variables 'N' and 'D' are declared for computational operations.

Heads<-c(3)
C<-function(Toss,Heads)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:Heads)
  {
    N=N*(Toss-i+1);
    D=D*(i);
  }
  output<-N/D
  return(output)
}
p<-C(Toss,Heads)/S
print(p)

# (B) Probability for obtaining 3 or fewer Heads be 'p_'.

# The sum of combinations for all value of Heads be represented by 'final'.
# Variables 'N' and 'D' are declared for computational operations.

final<-c(0);
Heads<-c(0,1,2,3)
C<-function(Toss,Heads)
{
  N<-c(1);
  D<-c(1);
  if(Heads==0)
  {
    output<-N/D
    return(output)
  }
  for(j in 1:Heads)
  {
    N=N*(Toss-j+1);
    D=D*(j);
  }
  output<-N/D;
  return(output)
}
for(k in 1:length(Heads))
{
  final<-final+C(Toss,Heads[k])
}
p_<-final/S
print(p_)

# The answer may slightly vary due to rounding off values.