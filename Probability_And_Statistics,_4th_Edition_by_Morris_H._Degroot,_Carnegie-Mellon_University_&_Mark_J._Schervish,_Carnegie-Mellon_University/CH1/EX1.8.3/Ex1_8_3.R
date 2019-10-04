# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 33

# The number of people in the group are represented by 'A' and the number of people in committee by 'k'.
# 'C' be the function defined to find the combinations for choosing 'k' people out of 'A'.
# 'P' be the function to find the number of jobs each selected individual can be assigned to after being selected in the committee.
# 'final' is the output from function 'C' which is used in function 'P'.

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
final<-C(A,k)
P<-function(k)
{
  for(j in 1:k)
  {
    final<-j*final
  }
  return(final)
}
print(P(8))

# The  answer provided in the textbook is wrong. The correct answer is '5079110400' instead of '5078110400' for 'A=20' and 'k=8'.