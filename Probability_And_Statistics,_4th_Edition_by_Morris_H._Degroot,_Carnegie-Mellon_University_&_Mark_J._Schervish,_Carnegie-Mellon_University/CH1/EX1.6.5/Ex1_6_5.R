# Chapter 1 - Introduction to Probability, Section - 1.6 (Finite Sample Spaces), Page No. - 24

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

# Following code will find the probability of each sum (from 2 to 12) and store the value in a vector 'P'.

P<-rep(0,11)
for(i in 1:length(P))
{
  P[i]=sum[i]/O;
}
print(P)

# The answer may slightly vary due to being represented as a real number rather than a fraction.