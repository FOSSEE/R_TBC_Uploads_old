# Chapter 2 - Conditional Probability, Section - 2.1 (The Definition of Conditional Probability), Page No. - 61

# Number of long and short bolts from first and second box be represented by 'B1_L', 'B1_S', 'B2_L' and 'B2_S'.

B1_L<-c(60);
B1_S<-c(40);
B2_L<-c(10);
B2_S<-c(20);

# Probability of event 'B1' and 'B2' be represented by 'Pr_B1' and 'Pr_B2'.

Pr_B1<-c(0.5);
Pr_B2<-c(0.5);

# Probability of selecting long bolts from first box and second box be represnted by 'Pr_A_inter_B1' and 'Pr_A_inter_B2'.

Pr_A_inter_B1=(Pr_B1)*(B1_L/(B1_L+B1_S));
Pr_A_inter_B2=(Pr_B2)*(B2_L/(B2_L+B2_S));

# Probability of event 'A' be represented by 'Pr_A'.

Pr_A=Pr_A_inter_B1+Pr_A_inter_B2;
print(Pr_A)

# The answer may slightly vary due to being represented as a real number rather than a fraction.