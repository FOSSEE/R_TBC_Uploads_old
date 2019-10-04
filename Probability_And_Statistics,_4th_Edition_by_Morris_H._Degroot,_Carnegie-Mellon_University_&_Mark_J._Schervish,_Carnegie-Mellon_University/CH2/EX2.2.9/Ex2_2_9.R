# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 70

# Let the probability of event 'A','B' and 'C' be represented by the functions 'Pr_A','Pr_B' and 'Pr_C' respectively.
# Let 'p' represents the probability of finding couple with specific characteristics and 'n' represents the total population.

Pr_A<-function(p,n)
{
  (1-(1-p)^n)
}
Pr_C<-function(p,n)
{
  n*p*((1-p)^(n-1))
}
Pr_B<-function(p,n)
{
  return(Pr_A(p,n)-Pr_C(p,n))
}

# Let the probability of event 'B' given 'A' be represented by 'Pr_B_given_A'.

Pr_B_given_A<-function(p,n)
{
  return(Pr_B(p,n)/Pr_A(p,n))
}
p<-c(8.3e-8)
n<-c(8000000)
print(Pr_B_given_A(p,n))

# The answer may slightly vary due to rounding off values.