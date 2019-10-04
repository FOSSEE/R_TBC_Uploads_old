# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 69

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

# Probability of events 'A', 'B' and 'C' be represented by 'Pr_A', 'Pr_B' and 'Pr_C' respectively.

Pr_A<-c(0);
Pr_B<-c(0);
Pr_C<-c(0);
for(k in 1:ncol(S))
{
  if(S[1,k]=='H')
  {
    Pr_A=Pr_A+1;
  }
  if(S[2,k]=='H')
  {
    Pr_B=Pr_B+1;
  }
  if(S[1,k]==S[2,k])
  {
    Pr_C=Pr_C+1;
  }
}
Pr_A=Pr_A/O;
print(Pr_A);
Pr_B=Pr_B/O;
print(Pr_B);
Pr_C=Pr_C/O;
print(Pr_C);  

# Probability of intersection of events 'A' & 'B', 'A' & 'C', 'B' & 'C' and 'A', 'B' & 'C' be represented by 'Pr_A_inter_B', 'Pr_A_inter_C', 'Pr_B_inter_C' and 'Pr_A_inter_B_inter_C' respectively.

Pr_A_inter_B=Pr_A*Pr_B;
print(Pr_A_inter_B)
Pr_A_inter_C=Pr_A*Pr_C;
print(Pr_A_inter_C)
Pr_B_inter_C=Pr_B*Pr_C;
print(Pr_B_inter_C)
Pr_A_inter_B_inter_C<-c(0);
for(l in 1:ncol(S))
{
  if(S[1,l]=='H'&&S[2,l]=='H')
  {
    Pr_A_inter_B_inter_C=Pr_A_inter_B_inter_C+1;
  }
}
Pr_A_inter_B_inter_C=Pr_A_inter_B_inter_C/O;
print(Pr_A_inter_B_inter_C)

# The answer may slightly vary due to being represented as a real number rather than a fraction.