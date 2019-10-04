# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 29

# Another method for applying permutations is by using function. 
# Hence, a function "P" is defined that takes in values 'n' and 'k' and returns the desired permutation.
# Here 'n' represents number of members in the club and 'k' represents the number of members to be chosen.
# For description, type ?function in the console.

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
P(25,2)