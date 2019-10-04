# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 27

# Number of coins is represented by 'A' and total possible outcomes by 'O'. For 6 coins (From Multiplication Rule) there will be a total of 2^6=64 possible outcomes.

A<-c(6);
O<-c(1);
for(l in 1:A)
{
  O=O*2;
}
print(O)

# Creating sample space 'S' containing all possible outcomes. Here, 'S' is a matrix with 'A' rows and 'O' columns.
# "ceiling" function is used to apply the mathematical ceiling operation. For description of this function, type ?ceiling in the console.

S<-matrix(nrow=A,ncol=O)
for(i in 1:A)
{
  for(j in 1:O)
  {
    if((ceiling(j/2^(A-i))%%2)!=0)
    {S[i,j]<-c('H')}
    else
    {S[i,j]<-c('T')}
  }
}

# Finding probabilities of certain outcomes. 
# For the purpose of checking for desired outcomes following variables are used.

count<-c(0);
Heads<-c(0);
Tails<-c(0);

# For 6 Heads and 0 Tails, let the probability be represented by 'Pr_6H'.

for(k in 1:O)
{
  for(l in 1:A)
  {
    if(S[l,k]=='H')
    {Heads=Heads+1;}
  }
  if(Heads==6)
  {count=count+1;
  Heads<-c(0);}
  else
  {Heads<-c(0);}
}
Pr_6H=count/O
print(Pr_6H)

# For 1 Heads and 5 Tails, let the probability be represented by 'Pr_5T'

count<-c(0);
Heads<-c(0);
Tails<-c(0);
for(m in 1:O)
{
  for(n in 1:A)
  {
    if(S[n,m]=='H')
    {Heads=Heads+1;}
  }
  if(Heads==1)
  {count=count+1;
  Heads<-c(0);}
  else
  {Heads<-c(0);}
}
Pr_5T=count/O
print(Pr_5T)

# The answer may slightly vary due to being represented as a real number rather than a fraction.