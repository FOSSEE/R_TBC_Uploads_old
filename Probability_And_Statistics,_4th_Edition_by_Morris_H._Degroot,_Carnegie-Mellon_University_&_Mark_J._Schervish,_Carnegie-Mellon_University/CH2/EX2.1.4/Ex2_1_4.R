# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 57

# Total number of patients and number of placebo receiving patients having relapse be represented by 'total','A_P'.

A_P<-c(24);
B<-c(34);
total<-c(150);

# Probability of 'B', 'A' intersection 'B' and conditional probability of 'A' given that 'B' has already occured are represented by 'Pr_B', 'Pr_A_inter_B' and 'Pr_A_B' respectively.

Pr_B=B/total;
Pr_A_inter_B=A_P/total;
Pr_A_B=Pr_A_inter_B/Pr_B;
print(Pr_B)
print(Pr_A_inter_B)
print(Pr_A_B)

# Event of patients receiving Lithium is given as 'C', let the probability of 'C', 'A' intersection 'C' and conditional probability of 'A' given that 'C' has already occured are represented by 'Pr_C', 'Pr_A_inter_C' and 'Pr_A_C' respectively.
# Number of Lithium receiving patients having relapse be represented by 'A_L'.

C<-c(38);
A_L<-c(13);
Pr_C=C/total;
Pr_A_inter_C=A_L/total;
Pr_A_C=Pr_A_inter_C/Pr_C;
print(Pr_C)
print(Pr_A_inter_C)
print(Pr_A_C)

# The answer may slightly vary due to being represented as a real number rather than a fraction and also due to rounding off.