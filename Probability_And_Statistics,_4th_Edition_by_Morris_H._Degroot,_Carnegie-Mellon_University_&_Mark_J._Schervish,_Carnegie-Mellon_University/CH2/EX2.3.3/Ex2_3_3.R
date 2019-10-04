# Chapter 2 - Conditional Probability, Section - 2.3 (Bayes' Theorem), Page No. - 78

# Probability of events 'B1', 'B2' and Conditional probability of 'A' given that 'B1' and 'B2' has already occured are represented by 'Pr_B1','Pr_B2','Pr_A_B1' and 'Pr_A_B2'.

Pr_B1<-c(0.0001);
Pr_B2=1-Pr_B1;
Pr_A_B1<-c(0.9);
Pr_A_B2=1-Pr_A_B1;

# Probability of event 'B1' such that event 'A' has already occured be represented by 'Pr_B1_A'.

Pr_B1_A=((Pr_A_B1*Pr_B1)/((Pr_A_B1*Pr_B1)+(Pr_A_B2*Pr_B2)));
print(Pr_B1_A)

# The answer may slightly vary due to rounding off values.