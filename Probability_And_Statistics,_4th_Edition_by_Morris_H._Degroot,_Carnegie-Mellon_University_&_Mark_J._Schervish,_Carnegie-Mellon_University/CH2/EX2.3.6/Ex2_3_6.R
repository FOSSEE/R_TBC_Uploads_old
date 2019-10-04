# Chapter 2 - Conditional Probability, Section - 2.3 (Bayes' Theorem), Page No. - 82

# The prior probability of 'B1' and 'B2' be represented by 'Pr_p_B1' and 'Pr_p_B2' respectively.
# Conditional probability of 'A' given that 'B1'and 'B2' have already occured seperately are represented by 'Pr_A_B1' and 'Pr_A_B2' respectively.
# Conditional probability of 'B1' given that 'A' has already occured be represented by 'Pr_B1_A'.

Pr_p_B1<-c(0.9)
Pr_p_B2<-c(0.1)
Pr_A_B1<-c(0.00144)
Pr_A_B2<-c(0.311)
Pr_B1_A=(Pr_p_B1*Pr_A_B1)/((Pr_p_B1*Pr_A_B1)+(Pr_p_B2*Pr_A_B2))
print(Pr_B1_A)

# The answer may slightly vary due to rounding off values.