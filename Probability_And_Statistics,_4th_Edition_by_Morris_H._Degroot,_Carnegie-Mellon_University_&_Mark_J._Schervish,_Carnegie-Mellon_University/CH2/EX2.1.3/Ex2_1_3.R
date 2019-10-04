# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 57

# Number of dice is represented by 'A' and total possible outcomes by 'O'. For 2 dice there will be a total of 36 possible outcomes.

A<-c(2);
O<-c(1);
for(l in 1:A)
{
  O=O*6;
}

# Following code will find the frequency of sum of digits in each possible outcome pair and store them in vector 'sum'.
# "rep" function is used to initialize a vector by a value which is replicated over a number of times.
# For description of rep function, type ?rep in console.

sum<-rep(0,11)
for(k in 1:6)
{
  for(j in 1:6)
  {
    if((k+j)==2)
    {sum[1]=sum[1]+1;}
    if((k+j)==3)
    {sum[2]=sum[2]+1;}
    if((k+j)==4)
    {sum[3]=sum[3]+1;}
    if((k+j)==5)
    {sum[4]=sum[4]+1;}
    if((k+j)==6)
    {sum[5]=sum[5]+1;}
    if((k+j)==7)
    {sum[6]=sum[6]+1;}
    if((k+j)==8)
    {sum[7]=sum[7]+1;}
    if((k+j)==9)
    {sum[8]=sum[8]+1;}
    if((k+j)==10)
    {sum[9]=sum[9]+1;}
    if((k+j)==11)
    {sum[10]=sum[10]+1;}
    if((k+j)==12)
    {sum[11]=sum[11]+1;}
  }
}

# Finding probability of event 'A' intersection 'B', represented as 'Pr_A_inter_B'.
# "&&" is logical AND operator.

Pr_A_inter_B<-c(0);
for(i in 1:length(sum))
{
  if(((i%%2)==0)&&(i<8))
  {Pr_A_inter_B=Pr_A_inter_B+((sum[i])/O)}   
}
print(Pr_A_inter_B)

# Finding probability of event 'B', represented as 'Pr_B'.

Pr_B<-c(0);
for(m in 1:length(sum))
{
  if((m%%2)==0)
  {Pr_B=Pr_B+((sum[m])/O)}   
}
print(Pr_B)

# Probability of event 'A' given 'B' be represented as 'Pr_A_B'.

Pr_A_B=Pr_A_inter_B/Pr_B;
print(Pr_A_B)

# The answer may slightly vary due to being represented as a real number rather than a fraction.