# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 35

# This is an example of combinations with repetitions.
# The number of distinct objects is represented by 'n' and the number of objects to be choosen by 'k'.
# In the case of combinations with repetitions, the total number of objects to choose from is "k+(n-1)". For more info. refer to - "https://www.mathsisfun.com/combinatorics/combinations-permutations.html"
# The result of combination is represented by 'C'. For computation purpose two more variables namely 'N' and 'D' are declared.

n<-c(7);
k<-c(12);
N<-c(1);
D<-c(1);
for(i in 1:(n-1))
{
  N=N*(k+n-i);
  D=D*i;
}
C<-N/D;
print(C)