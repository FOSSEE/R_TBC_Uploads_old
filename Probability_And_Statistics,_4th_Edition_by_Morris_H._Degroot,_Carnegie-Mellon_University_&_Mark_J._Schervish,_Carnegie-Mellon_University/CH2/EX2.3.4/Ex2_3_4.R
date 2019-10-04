# Chapter 2 - Conditional Probability, Section - 2.3 (Bayes' Theorem), Page No. - 78

# Probability of events 'B1','B2' and 'B3' be represented by vector 'Pr_B'.
# Conditional probability of event 'A' given that events 'B1','B2' and 'B3' have already occured be represented by vector 'Pr_A_B'.

Pr_B<-c(0.2,0.3,0.5);
Pr_A_B<-c(0.01,0.02,0.03);

# Conditional probability of event 'B2' such that event 'A' has already occured is represented by 'Pr_B2_A'.
# "for" loop is used to simulate summation and "length" function is used to find the length of a vector.
# For description type ?length in the console.
# 'sum' variable is declared for calculation operations.

sum<-c(0);
for(i in 1:length(Pr_B))
{
  sum=sum+Pr_B[i]*Pr_A_B[i];
}
Pr_B2_A=((Pr_B[2]*Pr_A_B[2])/sum);
print(Pr_B2_A)

# The answer may slightly vary due to rounding off values.