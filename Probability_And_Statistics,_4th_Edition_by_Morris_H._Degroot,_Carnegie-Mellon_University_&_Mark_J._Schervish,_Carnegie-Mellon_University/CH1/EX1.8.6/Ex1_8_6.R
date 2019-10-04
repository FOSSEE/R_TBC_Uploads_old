# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 35

# Method 1 

# Sample space is represented by 'S1', number of distinct items be represented by 'n' and number of items to be choosen be represented by 'k'.

n<-c(7);
k<-c(12);
S1=n^k;
print(S1)

# It is obvious that only 'n' such events are possible where all the items are of same type as there are only 'n' distint objects to choose from.
# Probability of getting all same items is represented by 'P1'.

P1=n/S1
print(P1)

# Method 2

# Sample space is represented by 'S2'.
# Variables 'N' and 'D' are declared for computational operations.

N<-c(1);
D<-c(1);
for(i in 1:(n-1))
{
  N=N*(k+n-i);
  D=D*i;
}
S2<-N/D;

# Probability of getting all same items is represented by 'P2'.

P2=n/S2
print(P2)

# The answer may slightly vary due to rounding off values.