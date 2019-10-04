# Chapter 1 - Introduction to Probability, Section - 1.9 (Multinomial Coefficients), Page No. - 44

# Number of players, number of total cards, number of hearts and the number of hearts that are needed to be given to players are represented by 'Players','Total', 'H','A','B','C' and 'D' respectively.

Players<-c(4);
Total<-c(52);
H<-c(13);
A<-c(6);
B<-c(4);
C<-c(2);
D<-c(1);

# For the purpose of calculation 'A','B','C' and 'D' are enclosed in a vector 'P'.

P<-c(A,B,C,D);

# For the purpose of solving this problem following two functions are needed to be defined.
# A function 'Fact' is defined. It finds the factorial of input value.
# A variable 'result' is declared in the function for computation operation.

Fact<-function(n)
{
  result<-c(1);
  for(i in 1:n)
  {
    result<-result*i;
  }
  return(result)
}

# In order to apply Multinomial Theorem a function named 'Multi' is defined as follows.
# Variables 'output' and 'final' are declared in the function for computation operation.


Multi<-function(n,k)
{
  output<-c(1);
  for(j in 1:length(k))
  {
    output<-output*Fact(k[j])
  }
  final=Fact(n)/output;
  return(final)
}

# The number of ways in which 13 cards are distributed to 4 players is represented by 'N'.
# For the purpose of finding 'N' a vector 'K' is difined such that it contains the number of cards belomging to each player, i.e. 13.
# Function "rep" creates a vector by replicating values and function "length" is used to find the length of a vector. 
# For their description, type ?rep and ?length in the console.

K=rep(13, Players)
N=Multi(Total,K);
print(N)

# The number of ways to distribute cards to each player such that they get the desired number of hearts is represented by 'M1'.
# The number of ways such that the remaining cards are distributed to each player for them to have a total of 13 cards each is represented by 'M2'.
# The number of ways to distribute cards to each player such that they get 13 cards is represented by 'M'.

M1=Multi(H,P);
M2=Multi((Total-H),((P-13)*-1));
M=M1*M2;
print(M)

# Required probability is represented by 'p'.

p=M/N;
print(p)

# The answer may slightly vary due to rounding off values.