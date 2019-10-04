# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 38

# Total number of cards, number of aces and cards occupied by each player be represented by 'Cards', 'Aces' and 'O' respectively.

Cards<-c(52);
Aces<-c(4);
O<-c(13);

# Let ways to arrange 4 aces in 4 positions, remaining cards in remaining positions and 
# possible arrangements for complete ordering of 52 cards be represented by be represented by 'A_P', 'R_P' and 'C_P' respectively.
# A function 'Fact' is defined in order to find number of possible arrangements.

Fact<-function(n)
{
  output<-c(1);
  for(i in 1:n)
  {
    output<-output*i;
  }
  return(output)
}
A_P=Fact(Aces);
R_P=Fact(Cards-Aces);
C_P=Fact(Cards);

# Following loop will determine the number of possible combinations leading to the desired result.
# Result will be represented by 'R'.

R<-c(1);
for(j in 1:Aces)
{
  R=R*O;
}

# Required probability be represented by 'p'.

p=(R*A_P*R_P)/C_P
print(p)

# The answer may slightly vary due to rounding off values.