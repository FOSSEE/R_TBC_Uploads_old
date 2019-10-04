# Chapter 2 - Conditional Probability, Section - 2.3 (Bayes' Theorem), Page No. - 79

# Probability of events 'B1','B2','B3','B4','B5' and 'B6' be represented by vector 'Pr_B'.
# Conditional probability of event 'E' given that events 'B1','B2','B3','B4','B5' and 'B6' have already occured be represented by vector 'Pr_E_B'.

Pr_B<-c(1/16,1/4,1/8,1/4,1/4,1/16);
Pr_E_B<-c(1,1,1,3/4,1/2,0);

# Conditional probability of events 'B1' and 'B5' seperately such that event 'E' has already occured is represented by 'Pr_B1_E' and 'Pr_B5_E'.
# "for" loop is used to simulate summation and "length" function is used to find the length of a vector.
# For description type ?length in the console.
# 'sum' variable is declared for calculation operations.

sum<-c(0);
for(i in 1:length(Pr_B))
{
  sum=sum+Pr_B[i]*Pr_E_B[i];
}
Pr_B1_E=((Pr_B[1]*Pr_E_B[1])/sum);
print(Pr_B1_E)
Pr_B5_E=((Pr_B[5]*Pr_E_B[5])/sum);
print(Pr_B5_E)

# The answer may slightly vary due to rounding off values.