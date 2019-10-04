# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 33

# The number of people in the group are represented by 'A' and the number of people in committee by 'k'.
# 'C' be the function defined to find the combinations for choosing 'k' people out of 'A' at a time.
# 'N' and 'D' are variables declared in the function definition for the purpose of calculation operations.

A<-c(20);
k<-c(8);
C<-function(A,k)
  {
    N<-c(1);
    D<-c(1);
    for(i in 1:k)
    {
      N=N*(A-i+1);
      D=D*(i);
    }
    output<-N/D
    return(output)
  }
print(C(A,k))