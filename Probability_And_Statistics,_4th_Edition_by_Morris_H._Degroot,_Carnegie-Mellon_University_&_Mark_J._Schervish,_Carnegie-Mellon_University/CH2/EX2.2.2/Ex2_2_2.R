# Chapter 2 - Conditional Probability, Section - 2.2 (Independent Events), Page No. - 67

# The probability of events 'A', 'B', both occuring and at least one occuring be represented by 'Pr_A','Pr_B','Pr_A_inter_B' and 'Pr_A_B'.

Pr_A<-c(1/3);
Pr_B<-c(1/4);
Pr_A_inter_B=Pr_A*Pr_B;
print(Pr_A_inter_B)
Pr_A_B=Pr_A+Pr_B-Pr_A_inter_B;
print(Pr_A_B)

# The answer may slightly vary due to being represented as a real number rather than a fraction.