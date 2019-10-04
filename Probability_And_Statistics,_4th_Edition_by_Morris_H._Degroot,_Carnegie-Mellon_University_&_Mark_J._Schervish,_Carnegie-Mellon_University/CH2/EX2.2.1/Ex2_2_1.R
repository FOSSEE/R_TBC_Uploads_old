# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 66

# The number of coins, total outcomes and sample space be represented by 'I', 'O' and 'S' respectively.

I<-c(2);
O<-c(1);
for(l in 1:I)
{
  O=O*2;
}

# Functions "nrow" and "ncol" are used to find the number of rows and columns in a matrix.
# for description, type ?nrow and/or ?ncol in the console.

S<-matrix(nrow=I,ncol=O)
for(i in 1:I)
{
  for(j in 1:O)
  {
    if((ceiling(j/2^(I-i))%%2)!=0)
    {S[i,j]<-c('H')}
    else
    {S[i,j]<-c('T')}
  }
}

# Probability of events 'B', 'A' intersection 'B' and conditional probability of 'A' given that 'B' has already occured be represented by 'Pr_B', 'Pr_A_inter_B' and 'Pr_A_B'.

Pr_B<-c(0);
Pr_A_inter_B<-c(0);
Pr_A_B<-c(0);
for(k in 1:ncol(S))
{
  if(S[1,k]=='T')
  {
    Pr_B=Pr_B+1;
  }
}
for(l in 1:ncol(S))
{
  if(S[1,l]=='T'&&S[2,l]=='H')
  {
    Pr_A_inter_B=Pr_A_inter_B+1;
  }
}
Pr_A_B=Pr_A_inter_B/Pr_B;
print(Pr_A_B)

# The answer may slightly vary due to being represented as a real number rather than a fraction.