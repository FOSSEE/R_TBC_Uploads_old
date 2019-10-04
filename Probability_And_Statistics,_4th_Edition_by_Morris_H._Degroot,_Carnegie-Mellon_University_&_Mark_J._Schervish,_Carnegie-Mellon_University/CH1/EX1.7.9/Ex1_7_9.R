# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 29

# 'S' represents the total permutations or sample space, 'n' represents the number of books available and 'k' represents the number of books to be chosen at a time.
# For the given problem both 'n' and 'k' are same i.e. 6, because 6 books are arranged by taking all 6 at a time.

P<-function(n,k)
{
  S<-c(1);
  for(i in 1:k)
  {
    S=S*n;
    n=n-1;
  }
  return(S);
}
P(6,6)