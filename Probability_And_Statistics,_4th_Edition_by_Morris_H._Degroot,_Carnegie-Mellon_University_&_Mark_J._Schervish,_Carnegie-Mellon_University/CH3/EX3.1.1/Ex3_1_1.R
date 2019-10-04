# Chapter 3 - Random Variables and Distributions, Section - 3.1 (Random Variables and Discrete Distributions), Page No. - 93

# Possible outcomes of a coin toss is represented by 'toss'.

toss<-c('H','T')

# Let 'T' represents the number of times a fair coin is tossed.

T<-c(10)

# Let the possible number of Heads and Tails sequence be represented by 'Sequence'.

Sequence=2^T;
print(Sequence)

# In order to find all possible permutations of coin toss, "gtools" package is installed by executing the following command.

install.packages("gtools")

# "gtools" library is added by executing the following command.

library(gtools)

# All permutations are represented by 'tosses'.
# "permutations" function is used in order to find all the possible permutations for the coin toss.
# For more description, type ?permutations in the console.

tosses<-permutations(n=2,r=10,v=toss,repeats.allowed=TRUE)

# Let a function named 'X' for counting the number of Heads in a sequence.
# Let variable 'sum' be defined in the function for computational operations.

X<-function(x)
{
  sum<-c(0);
  for(i in 1:length(x))
  {
    if(x[i]=='H')
    {
      sum=sum+1;
    }
  }
  return(sum)
}

# Let the number of Heads for each sequence be stored in the vector named 'Heads'.
# "vector" function is used to define a vector.
# For more description, type ?vector in the console.

Heads<-vector(mode='numeric',length=(nrow(tosses)))
for(j in 1:nrow(tosses))
{
  Heads[j]=X(tosses[j,])
}

# "unique" function can be used to find unique values in a vector.

Heads<-unique(Heads)

# "sort" function is used to sort values in a vector.

Heads<-sort(Heads,decreasing=FALSE)

# Possible values given out by the function 'X' be as follows.

print(Heads)